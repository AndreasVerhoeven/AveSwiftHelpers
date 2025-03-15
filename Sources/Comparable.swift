//
//  Comparable.swift
//  Demo
//
//  Created by Andreas Verhoeven on 15/03/2025.
//

import Foundation

public extension Comparable {
	/// Returns this value clamped between a given minimum (inclusive) and maximum (inclusive).
	/// If minimum > maximum, the result is undefined.
	func clamped(minimum: Self, maximum: Self) -> Self {
		return max(minimum, min(self, maximum))
	}

	/// Returns this value clamped between between a closed (inclusive) range.
	/// If lowerBound > upperBound, the result is undefined.
	func clamped(between range: ClosedRange<Self>) -> Self {
		return clamped(minimum: range.lowerBound, maximum: range.upperBound)
	}
}
