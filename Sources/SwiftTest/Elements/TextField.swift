//
//  TextField.swift
//  SwiftTest
//
//  Created by Michael Arrington on 10/2/19.
//

@available(iOS 9.0, *)
public class TextField: Element, Typeable {
	
	public var text: String {
		element.value as? String ?? ""
	}
}
