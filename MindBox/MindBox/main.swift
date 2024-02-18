//
//  main.swift
//  MindBox
//
//  Created by Екатерина Алексеева on 14.02.2024.
//

import Foundation

// Cоздаем калькулятор площади фигуры. Для вычисления площади необходимо вызвать метод getArea(figure: )
let calculator = AreaCalculator()

/* На данный момент времени доступны две фигуры:
     1. треугольник - Triangle(a: , b: , c: ), где a, b, c - длины сторон треугольника
        Для треугольника доступна функция проверки, является ли он прямоугольным
     2. круг - Circle(r: ), где r - длина радиуса
 */


let tr = Triangle(3, 4, 2)
let cr = Circle(2)
calculator.getArea(figure: tr)
calculator.getArea(figure: cr)
tr?.isRectangular()
