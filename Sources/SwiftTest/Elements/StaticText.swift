//
//  StaticText.swift
//  SwiftTest
//
//  Created by Michael Arrington on 9/30/19.
//

@available(iOS 9.0, *)
public class StaticText: Element {
	
	public var text: String {
		element.label
	}
}
