//
//  Tappable.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

public protocol Tappable {
	
	func tap()
}

@available(iOS 9.0, *)
extension Tappable where Self: Element {
	
	public func tap() {
		element.tap()
	}
}
