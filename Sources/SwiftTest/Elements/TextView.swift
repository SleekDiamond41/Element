//
//  TextView.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

@available(iOS 9.0, *)
public class TextView: Element {
	
	public var text: String {
		element.value as? String ?? ""
	}
}
