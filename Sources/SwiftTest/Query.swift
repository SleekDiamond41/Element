//
//  Query.swift
//  SwiftTest
//
//  Created by Michael Arrington on 9/30/19.
//

import XCTest

@available(iOS 9.0, *)
public final class Query<T> where T: Element {
	let query: XCUIElementQuery
	
	init(_ query: XCUIElementQuery) {
		self.query = query
	}
	
	
	
	// MARK: - Public Interface
	
	public var firstMatch: T {
		return T(query.firstMatch)
	}
	
	public var element: T {
		return T(query.element)
	}
	
	public func allMatches() -> [T] {
		return query.allElementsBoundByIndex.map(T.init)
	}
	
	public func match(at index: Int) -> T {
		return T(query.element(boundBy: index))
	}
	
	public subscript (label: String) -> T {
		return T(query[label])
	}
	
	public func `where`(isSelected: Bool) -> Query {
		return Query(query.matching(NSPredicate(format: "isSelected == %s", isSelected)))
	}
	
	public func `where`(isEnabled: Bool) -> Query {
		return Query(query.matching(NSPredicate(format: "isEnabled == %s", isEnabled)))
	}
	
	public func `where`(isHittable: Bool) -> Query {
		return Query(query.matching(NSPredicate(format: "isHittable == %s", isHittable)))
	}
	
	func test() -> Element {
		let example = self // App.windows.tables
		
		return example.cells
			.where(isSelected: true)
			.where(isEnabled: false)
			.where(isHittable: true)
			.firstMatch
	}
	
	
	// MARK: -
	
	public var alerts: Query<Alert> {
		Query<Alert>(query.alerts)
	}
	
	public var buttons: Query<Button> {
		Query<Button>(query.buttons)
	}
	
	public var cells: Query<Cell> {
		Query<Cell>(query.cells)
	}
	
	public var images: Query<Image> {
		Query<Image>(query.images)
	}
	
	public var navigationBars: Query<NavigationBar> {
		Query<NavigationBar>(query.navigationBars)
	}
	
	public var pickers: Query<Picker> {
		Query<Picker>(query.pickers)
	}
	
	public var segmentedControls: Query<SegmentedControl> {
		Query<SegmentedControl>(query.segmentedControls)
	}
	
	public var staticTexts: Query<StaticText> {
		Query<StaticText>(query.staticTexts)
	}
	
	public var tables: Query<Table> {
		Query<Table>(query.tables)
	}
	
	public var textFields: Query<TextField> {
		Query<TextField>(query.textFields)
	}
	
	public var textViews: Query<TextView> {
		Query<TextView>(query.textViews)
	}
	
	public var toggles: Query<Toggle> {
		Query<Toggle>(query.toggles)
	}
	
	public var toolbars: Query<Toolbar> {
		Query<Toolbar>(query.toolbars)
	}
}

@available(iOS 9.0, *)
extension Query: Collection {
	
	public var count: Int {
		return query.count
	}
	
	public var startIndex: Int {
		return 0
	}
	public var endIndex: Int {
		return count
	}
	
	public subscript(position: Int) -> T {
		return T(query.element(boundBy: position))
	}
	
	public func index(after i: Int) -> Int {
		return i + 1
	}
}
