//
//  Picker.swift
//  SwiftTest
//
//  Created by Michael Arrington on 9/30/19.
//

@available(iOS 9.0, *)
public class Picker: Element {
	
	public var values: [String?] {
		element.pickerWheels.allElementsBoundByIndex.map { $0.value as? String }
	}
	
	public func adjust(to values: [String?]) {
		for (i, value) in values.enumerated() where value != nil {
			element.pickerWheels.element(boundBy: i).adjust(toPickerWheelValue: value!)
		}
	}
}
