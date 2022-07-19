//
//  Set.swift
//  Demo
//
//  Created by Andreas Verhoeven on 19/07/2022.
//

import Foundation

public extension Set {
	/// Toggles the given value: if it is in the set, remove it, otherwise add it.
	mutating func toggle(_ member: Element) {
		if contains(member) {
			remove(member)
		} else {
			insert(member)
		}
	}
}
