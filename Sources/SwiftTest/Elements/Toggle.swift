//
//  Toggle.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

import func XCTest.XCTAssert

@available(iOS 9.0, *)
public class Toggle: Element {
	
	public enum State {
		case on, off
	}
	
	public var state: State {
		assert(element.elementType == .switch, "Can't use \(element.description) as a \(Self.self)")
		
		guard let value = element.value as? String,
			!value.isEmpty else {
				preconditionFailure("Failed to get the value of the switch")
		}
		
		return value == "1" ? .on : .off
	}
	
	public func set(_ state: State) {
		// maintain a pretty external interface
		guard self.state != state else {
			return
		}
		
		element.tap()
		
		XCTAssert(self.state == state, "failed to set value of switch to \(state)")
	}
}
