//
//  Enableable.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

public protocol Enableable {
	
	var isEnabled: Bool { get }
}

@available(iOS 9.0, *)
extension Enableable where Self: Element {
	
	public var isEnabled: Bool {
		element.isEnabled
	}
}
