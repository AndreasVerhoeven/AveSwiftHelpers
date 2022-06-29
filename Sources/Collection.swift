//
//  Collection.swift
//  Demo
//
//  Created by Andreas Verhoeven on 29/06/2022.
//

import Foundation

extension RangeReplaceableCollection {
	/// Replaces the first item matching with the given element
	public mutating func replaceFirst(with element: Element, matching: (Element) -> Bool) {
		guard let index = firstIndex(where: matching) else { return }
		replaceSubrange(index..<self.index(after: index), with: [element])
	}
	
	public mutating func replaceFirst<T: Equatable>(having keyPath: KeyPath<Element, T>, as value: T, with element: Element) {
		replaceFirst(with: element, matching: { $0[keyPath: keyPath] == value })
	}
}
