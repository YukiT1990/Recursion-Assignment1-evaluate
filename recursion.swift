//
//  recursion.swift
//  RecursionAssignment1
//
//  Created by Yuki Tsukada on 2021/03/10.
//

import Foundation

func evaluate(formula: String) -> Int {
    if formula.count == 1 {
        return Int(formula)!
    } else if formula.count == 5 {
        return calculate(subFormula: formula)
    } else {
        if formula.contains(")+(") {
            let index = formula.range(of: ")+(")
            var firstString = String(formula[..<index!.upperBound])
            firstString = String(firstString[0, firstString.count - 2])
            var lastString = String(formula[index!.lowerBound...])
            lastString = String(lastString[2, lastString.count])
            return evaluate(formula: firstString) + evaluate(formula: lastString)
        } else if formula.contains(")*(") {
            let index = formula.range(of: ")*(")
            var firstString = String(formula[..<index!.upperBound])
            firstString = String(firstString[0, firstString.count - 2])
            var lastString = String(formula[index!.lowerBound...])
            lastString = String(lastString[2, lastString.count])
            return evaluate(formula: firstString) * evaluate(formula: lastString)
        } else if formula.contains("+(") {
            var newFormula = formula
            if newFormula[0] == "(" && newFormula[newFormula.count - 1] == ")" {
                newFormula = String(newFormula[1, newFormula.count - 1])
            }
            let index = newFormula.range(of: "+(")
            var firstString = String(newFormula[..<index!.upperBound])
            firstString = String(firstString[0, firstString.count - 2])
            var lastString = String(newFormula[index!.lowerBound...])
            lastString = String(lastString[1, lastString.count])
            return evaluate(formula: firstString) + evaluate(formula: lastString)
        } else if formula.contains("*(") {
            var newFormula = formula
            if newFormula[0] == "(" && newFormula[newFormula.count - 1] == ")" {
                newFormula = String(newFormula[1, newFormula.count - 1])
            }
            let index = newFormula.range(of: "*(")
            var firstString = String(newFormula[..<index!.upperBound])
            firstString = String(firstString[0, firstString.count - 2])
            var lastString = String(newFormula[index!.lowerBound...])
            lastString = String(lastString[1, lastString.count])
            return evaluate(formula: firstString) * evaluate(formula: lastString)
        } else if formula.contains(")+") {
            var newFormula = formula
            if newFormula[0] == "(" && newFormula[newFormula.count - 1] == ")" {
                newFormula = String(newFormula[1, newFormula.count - 1])
            }
            let index = newFormula.range(of: ")+")
            var firstString = String(newFormula[..<index!.upperBound])
            firstString = String(firstString[0, firstString.count - 1])
            var lastString = String(newFormula[index!.lowerBound...])
            lastString = String(lastString[2, lastString.count])
            return evaluate(formula: firstString) + evaluate(formula: lastString)
        } else if formula.contains(")*") {
            var newFormula = formula
            if newFormula[0] == "(" && newFormula[newFormula.count - 1] == ")" {
                newFormula = String(newFormula[1, newFormula.count - 1])
            }
            let index = newFormula.range(of: ")*")
            var firstString = String(newFormula[..<index!.upperBound])
            firstString = String(firstString[0, firstString.count - 1])
            var lastString = String(newFormula[index!.lowerBound...])
            lastString = String(lastString[2, lastString.count])
            return evaluate(formula: firstString) * evaluate(formula: lastString)
        } else {
            if formula.count == 2 {
                if formula[0] == "(" {
                    return evaluate(formula: formula[1])
                } else if formula[1] == ")" {
                    return evaluate(formula: formula[0])
                } else {
                    print(formula)
                    return 0
                }
            } else if formula.count % 2 == 0 {
                if formula[0] == "(" && formula[1] == "(" {
                    return evaluate(formula: String(formula[1, formula.count]))
                } else if formula[formula.count - 1] == ")" && formula[formula.count - 2] == ")" {
                    return evaluate(formula: String(formula[0, formula.count - 1]))
                } else {
                    print(formula)
                    return 0
                }
            } else {
                print(formula)
                return 0
            }
        }
    }
}

func calculate(subFormula: String) -> Int {
    let char = String(subFormula[2])
    if char == "+" {
        return (Int(String(subFormula[1]))! + Int(String(subFormula[3]))!)
    } else {
        return (Int(String(subFormula[1]))! * Int(String(subFormula[3]))!)
    }
}
