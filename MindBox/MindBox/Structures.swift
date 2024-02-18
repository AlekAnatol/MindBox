//
//  Structures.swift
//  MindBox
//
//  Created by Екатерина Алексеева on 14.02.2024.
//

import Foundation

// Структура Калькулятор площади
struct AreaCalculator {
    
    // Метод вычисление площади
    func getArea(figure: CalculatableArea?) -> Double? {
        guard let figure = figure else {
            print("Фигуры с заданными параметрами не существует")
            return nil
        }
        var ans = Double()
        if figure is Triangle {
            ans = figure.calculateArea()
            print(String(ans))
        } else if figure is Circle {
            ans = figure.calculateArea()
            print(String(ans))
        }
        return ans
    }
}

// Протокол, на который должна быть подписана структура, описывающая геометрическую фигуру
protocol CalculatableArea {
    func calculateArea() -> Double
}

// Структура Треугольник
struct Triangle: CalculatableArea {
    private var a: Double
    private var b: Double
    private var c: Double
    
    // Проваливающийся инициализатор. В случае некорректных данных выведется сообщение и фигура не будет создана
    init?(_ a: Double, _ b: Double, _ c: Double) {
        let sides = [a, b, c].sorted()
        if sides[0] + sides[1] >= sides[2] {
            self.a = a
            self.b = b
            self.c = c
        } else {
            return nil
        }
    }
    
    // Метод для вычисления площади
    func calculateArea() -> Double {
        let p = (a + b + c) * 0.5
        let s2 = p * (p - a) * (p - b) * (p - c)
        return sqrt(s2)
    }
    
    // Метод для проверки, является ли треугольник прямоугольным. Соответствующее сообщение выводится на экран
    func isRectangular() -> Bool {
        let sides = [a, b, c].sorted()
        let ans = sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
        ans ? print("Треугольник прямоугольный") : print("Треугольник НЕ прямоугольный")
        return ans
    }
    
    // Метод для уточнения длин сторон треугольника
    func getSidesLenght() -> [Double] {
        return [a,b,c].sorted()
    }
}

// Структура Круг
struct Circle: CalculatableArea {
    private var r: Double
    
    // Проваливающийся инициализатор. В случае некорректных данных выведется сообщение и фигура не будет создана
    init?(_ r: Double) {
        if r >= 0 {
            self.r = r
        } else {
            return nil
        }
    }
    
    // Метод для вычисления площади
    func calculateArea() -> Double {
        let s = Double.pi * r * r
        return s
    }
    
    // Метод для уточнения длины радиуса
    func getRadius() -> Double {
        return r
    }
}

