//
//  main.swift
//  RecursionAssignment1
//
//  Created by Yuki Tsukada on 2021/03/10.
//

import Foundation

print(evaluate(formula: "7"))
print(evaluate(formula: "(2+2)"))
print(evaluate(formula: "(1+(2*4))"))  // 9
print(evaluate(formula: "((1+3)+((1+2)*5))"))  // 19

print(evaluate(formula: "(2+2)+(2*2)"))  // 8
print(evaluate(formula: "(2+2)*(2*2)"))  // 16
print(evaluate(formula: "5+(2*2)"))  // 9
print(evaluate(formula: "5*(2*2)"))  // 20
print(evaluate(formula: "(2+2)+7"))  // 11
print(evaluate(formula: "(2+2)*7"))  // 28
print(evaluate(formula: "((1+3)+((1+2)+5))"))  // 12
print(evaluate(formula: "((1+3)+(5+(1+2)))"))  // 12
print(evaluate(formula: "((1+3)+(5*(1+2)))"))  // 19

