//
//  AreaCalculatorTests.swift
//  MindBoxTests
//
//  Created by Екатерина Алексеева on 16.02.2024.
//

import XCTest
@testable import MindBox

final class AreaCalculatorTests: XCTestCase {
    
    // Тест для проверки вычисления площади круга
    func testcalculateAreaForCircle() {
        let circle = Circle(2)
        let areaCalculator = AreaCalculator()
        let area = areaCalculator.getArea(figure: circle)
        XCTAssertEqual(area, 4 * Double.pi, "Некорректно считается площадь для круга в AreaCalculator")
    }
    
    // Тест для проверки вычисления площади треугольника
    func testcalculateAreaForTriangle() {
        let triangle = Triangle(3,4,5)
        let areaCalculator = AreaCalculator()
        let area = areaCalculator.getArea(figure: triangle)
        XCTAssertEqual(area, 6.0, "Некорректно считается площадь для треугольника в AreaCalculator")
    }
}
