//
//  MovieQuizTests.swift
//  MovieQuizTests
//
//  Created by Дария Исина on 24.04.2025.
//

import Testing
import XCTest

//struct MovieQuizTests {
//
//    @Test func example() async throws {
//        // Write your test here and use APIs like #expect(...) to check expected conditions.
//    }
//
//}

struct ArithmeticOperations {
    func addition(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func subtraction(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
    
    func multiplication(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
}



class MovieQuizTests: XCTestCase{
    func testAddition() throws {
        // Given
        let arithmeticOperations = ArithmeticOperations()
        let num1 = 1
        let num2 = 2
        
        // When
        let result = arithmeticOperations.addition(num1: num1, num2: num2)
        
        // Then
        XCTAssertEqual(result, 3)
    }
}
