//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by 조영민 on 4/14/25.
//

import XCTest

final class FizzBuzzTests: XCTestCase {
    // 제일 처음에 호출
    override func setUpWithError() throws {
        print("setUpWithError")
    }
    
    // 제일 마지막에 호출
    override func tearDownWithError() throws {
        print("tearDownWithError")
    }
    
    func testFizzBuzzDivisibleBy3() throws {
        let result = fizzBuzz(3)
        XCTAssertEqual(result, "fizz")
    }
    
    func testFizzBuzzDivisibleBy5() throws {
        let result = fizzBuzz(5)
        XCTAssertEqual(result, "buzz")
    }
    
    func testFizzBuzzDivisaibleBy15() throws {
        let result = fizzBuzz(15)
        XCTAssertEqual(result, "fizz-buzz")
    }
    
    func testFizzBuzzNotDivisibaleBy3or5ReturnInput() throws {
        let result = fizzBuzz(7)
        XCTAssertEqual(result, "7")
    }
    
    func testAsyncSum() async throws {
        await asyncSum(a: 3, b: 5) {
            result in
            XCTAssertEqual(result, 8)
        }
    }
}
