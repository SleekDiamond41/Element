//
//  Selectable.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

public protocol Selectable {
	
	var isSelected: Bool { get }
}

@available(iOS 9.0, *)
extension Selectable where Self: Element {
	
	public var isSelected: Bool {
		element.isSelected
	}
}
