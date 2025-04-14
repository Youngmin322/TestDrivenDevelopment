//
//  CalculatorTests.swift
//  FizzBuzzTests
//
//  Created by 조영민 on 4/14/25.
//

import XCTest

@testable import HelloWorld

class CalculatorTests: XCTestCase {
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }
    
    override func tearDown() {
        calculator = nil
        super.tearDown()
    }
    
    func testAddition() {
        let a = 5
        let b = 3
        
        let result = calculator.add(a, b)
        
        XCTAssertEqual(result, 8)
    }
    
    func testSubtraction() {
        let a = 10
        let b = 8
        
        let result = calculator.subtract(a, b)
        
        XCTAssertEqual(result, 2)
    }
    
    func testMultiplecation() {
        let a = 7
        let b = 7
        
        let result = calculator.multiply(a, b)
        
        XCTAssertEqual(result, 49)
    }
    
    func testDivision() {
        let a = 20
        let b = 2
        
        let result = calculator.divide(a, b)
        
        XCTAssertEqual(result, 10)
    }
    
    
}

