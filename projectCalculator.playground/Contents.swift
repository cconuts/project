import Foundation

//2024.03.08 2주차 개인과제(계산기)

class AbstractOperation {
    
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func calculate() -> Double {
        return 0
    }
    
}
    
    
    class AddOperation: AbstractOperation {
        override func calculate() -> Double {
            return num1 + num2 }
    }
    
    class SubtractOperation: AbstractOperation {
        override func calculate() -> Double {
            return num1 - num2 }
    }
    
    class MultiplyOperation: AbstractOperation {
        override func calculate() -> Double {
            return num1 * num2 }
    }
    
    class DivideOperation: AbstractOperation {
        override func calculate() -> Double {
            guard num2 != 0 else {
                return 0
            }
            return num1 / num2
        }
    }
    

let addOperation = AddOperation(num1: 5, num2: 3)
let subtractOperation = SubtractOperation(num1: 5, num2: 3)
let multiplyOperation = MultiplyOperation(num1: 5, num2: 3)
let divideOperation = DivideOperation(num1:5, num2:3)

let additionResult = addOperation.calculate()
let subtractionResult = subtractOperation.calculate()
let multplicationResult = multiplyOperation.calculate()
let divisionResult = divideOperation.calculate()

print("additionResult: \(additionResult)")
print("subtractionResult: \(subtractionResult)")
print("multiplicationResult: \(multplicationResult)")
print("diviionResult: \(divisionResult)")
