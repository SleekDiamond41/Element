//
//  Swipeable.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

public enum Direction {
	
	case left, right, up, down
}

public protocol Swipeable {
	
	func swipe(_ direction: Direction)
}

@available(iOS 9.0, *)
extension Swipeable where Self: Element {
	
	public func swipe(_ direction: Direction) {
		switch direction {
		case .left: element.swipeLeft()
		case .right: element.swipeRight()
		case .up: element.swipeUp()
		case .down: element.swipeDown()
		}
	}
}
