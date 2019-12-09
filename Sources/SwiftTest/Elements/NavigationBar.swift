//
//  NavigationBar.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

@available(iOS 9.0, *)
public class NavigationBar: Element, TextProviding {
	
	public var text: String {
		element.staticTexts.element.label
	}
}
