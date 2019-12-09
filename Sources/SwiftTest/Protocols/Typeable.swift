//
//  Typeable.swift
//  SwiftTest
//
//  Created by Michael Arrington on 9/30/19.
//

public protocol Typeable: TextProviding {
	
	func type(_ text: String)
	func clearText()
}

@available(iOS 9.0, *)
extension Typeable where Self: Element {
	
	public func type(_ text: String) {
		element.typeText(text)
	}
}

@available(iOS 9.0, *)
extension Typeable where Self: Element {
	
	public func clearText() {
		let charCount = (element.value as? String ?? "").count
		
		guard charCount > 0 else {
			return
		}
		
		for _ in 1...charCount {
			// TODO: press backspace a lot to clear text
		}
		
		assert(element.value as? String ?? "" == "")
	}
}
