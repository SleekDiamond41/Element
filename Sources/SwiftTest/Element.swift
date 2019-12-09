//
//  Element.swift
//  SwiftTest
//
//  Created by Michael Arrington on 9/30/19.
//

import XCTest

@available(iOS 9.0, *)
public class Element {
	
	public static var app: XCUIApplication?
	 
	let element: XCUIElement
	
	required init(_ element: XCUIElement) {
		self.element = element
	}
	
	
	// MARK: - Public Interface
	
	public convenience init(_ element: Element) {
		self.init(element.element)
	}
	
	public var identifier: String {
		element.identifier
	}
	
	// MARK: -
	
	public var alerts: Query<Alert> {
		Query(element.alerts)
	}
	
	public var buttons: Query<Button> {
		Query(element.buttons)
	}
	
	public var cells: Query<Cell> {
		Query(element.cells)
	}
	
	public var images: Query<Image> {
		Query(element.images)
	}
	
	public var navigationBars: Query<NavigationBar> {
		Query(element.navigationBars)
	}
	
	public var pickers: Query<Picker> {
		Query(element.pickers)
	}
	
	public var segmentedControls: Query<SegmentedControl> {
		Query(element.segmentedControls)
	}
	
	public var staticTexts: Query<StaticText> {
		Query(element.staticTexts)
	}
	
	public var tables: Query<Table> {
		Query(element.tables)
	}
	
	public var textFields: Query<TextField> {
		Query(element.textFields)
	}
	
	public var textViews: Query<TextView> {
		Query(element.textViews)
	}
	
	public var toggles: Query<Toggle> {
		Query(element.toggles)
	}
	
	public var toolbars: Query<Toolbar> {
		Query(element.toolbars)
	}
}
