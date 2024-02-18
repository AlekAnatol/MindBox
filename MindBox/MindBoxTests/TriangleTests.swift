//
//  TriangleTests.swift
//  MindBoxTests
//
//  Created by Екатерина Алексеева on 16.02.2024.
//

import XCTest
@testable import MindBox

final class TriangleTests: XCTestCase {
    
    // Тест для проверки корреткности внесения значения длин сторон
    func testTriangleSidesValues() {
        let triangle = Triangle(4,2,5)!
        let expectation = [2.0, 4.0, 5.0]
        XCTAssertEqual(triangle.getSidesLenght(), expectation, "Некорректно вносятся значения длины треугольника")
    }
    
    // Тест для проверки вычисления площади круга в структуре Triangle
    func testTriangleCalculateAreaFunc() {
        let triangle = Triangle(3,4,5)!
        let expectation = 6.0
        let area = triangle.calculateArea()
        XCTAssertEqual(area, expectation, "Некорректно считается площадь")
    }
    
    // Тест для проверки прямоугольности в случае прямугольного треугольника
    func testTriangleIsRectangularFuncPositive() {
        let triangle = Triangle(3,4,5)!
        let expectation = true
        let isRectangular = triangle.isRectangular()
        XCTAssertEqual(isRectangular, expectation, "Некорректно определяется прямоугольность для прямоугольного треугольника")
    }
    
    // Тест для проверки прямоугольности в случае НЕ прямугольного треугольника
    func testTriangleIsRectangularFuncNegative() {
        let triangle = Triangle(2,4,5)!
        let expectation = false
        let isRectangular = triangle.isRectangular()
        XCTAssertEqual(isRectangular, expectation, "Некорректно определяется прямоугольность для НЕ прямоугольного треугольника")
    }
}
