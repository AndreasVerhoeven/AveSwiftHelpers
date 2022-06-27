//
//  IsEmptyOrNil.swift
//  DHash
//
//  Created by Andreas Verhoeven on 13/05/2021.
//

import Foundation

/// An enum that's a custom boolean only used for isEmptyOrNil: that way,
/// we have a typed custom boolean and can do our own compares
/// and make optional chaining work.
/// We're expressible by boolean literal, so you can just write `isEmptyOrNil == true`
/// instead of `isEmptyOrNil == .true`
public enum IsEmptyOrNilResult: ExpressibleByBooleanLiteral {
	case `true`
	case `false`
	
	public var boolValue: Bool {
		switch self {
			case .true: return true
			case .false: return false
		}
	}
	
	public init(booleanLiteral value: BooleanLiteralType) {
		self = value ? .true : .false
	}
}

/// helper to convert to boolean
public extension Optional where Wrapped == IsEmptyOrNilResult {
	var boolValue: Bool { self?.boolValue ?? true }
}

/// We've added an extension on Optional<Collection> so
/// that we can call `isEmptyOrNil` on optionals.
public extension Optional where Wrapped: Collection {
	var isEmptyOrNil: IsEmptyOrNilResult {
		guard let self = self else { return .true }
		return self.isEmptyOrNil
	}
}

/// We've added an extension on Collection that returns `.true` if the collection is empty
public extension Collection {
	var isEmptyOrNil: IsEmptyOrNilResult { isEmpty ? .true : .false }
}

/// comparison function:  `nil` is seen as true, since it's nil :)
public func == (lhs: IsEmptyOrNilResult?, rhs: IsEmptyOrNilResult?) -> Bool {
	return lhs.boolValue == rhs.boolValue
}
