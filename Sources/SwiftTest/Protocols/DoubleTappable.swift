//
//  DoubleTappable.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

public protocol DoubleTappable {
	
	func doubleTap()
}

@available(iOS 9.0, *)
extension DoubleTappable where Self: Element {
	
	public func doubleTap() {
		element.doubleTap()
	}
}
