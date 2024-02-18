//
//  CircleTests.swift
//  MindBoxTests
//
//  Created by Екатерина Алексеева on 16.02.2024.
//

import XCTest
@testable import MindBox

final class CircleTests: XCTestCase {
    
    // Тест для проверки корреткности внесения значения радиуса
    func testRadiusValue() {
        let circle = Circle(2)!
        let expectation = 2.0
        XCTAssertEqual(circle.getRadius(), expectation, "Некорректно вносится значение радиуса")
    }
    
    // Тест для проверки вычисления площади круга в структуре Circle
    func testCircleCalculateAreaFunc() {
        let circle = Circle(3)!
        let area = circle.calculateArea()
        XCTAssertEqual(area, 9 * Double.pi, "Некорректно считается площадь")
    }
}
