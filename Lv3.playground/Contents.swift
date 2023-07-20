// 계산 클래스
class Calculator {
    var firstNumber : Double
    var secondNumber : Double
    
    init (_ firstNumber: Double, _ secondNumber: Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func calculate(_ operation: String)-> Double? {
        switch operation {
        case "+":
            let addOperation = AddOperation(firstNumber, secondNumber)
            return addOperation.add()
        case "-":
            let subtractOperation = SubtractOperation(firstNumber, secondNumber)
            return subtractOperation.subtract()
        case "*":
            let multiplyOperation = MultiplyOperation(firstNumber, secondNumber)
            return multiplyOperation.multiply()
        case "/":
            let divideOperation = DivideOperation(firstNumber, secondNumber)
            return divideOperation.divide()
        default:
            return 0
        }
    }
}

// 덧셈 클래스
class AddOperation {
    var firstNumber : Double
    var secondNumber : Double
    
    init (_ firstNumber: Double, _ secondNumber: Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func add() -> Double {
        return firstNumber + secondNumber
    }
}

// 뺄셈 클래스
class SubtractOperation {
    var firstNumber : Double
    var secondNumber : Double
       
    init (_ firstNumber: Double, _ secondNumber: Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    func subtract() -> Double {
           return firstNumber - secondNumber
    }
    
}

// 곱셈 클래스
class MultiplyOperation {
    var firstNumber : Double
    var secondNumber : Double
       
    init (_ firstNumber: Double, _ secondNumber: Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    func multiply() -> Double {
            return firstNumber * secondNumber
     }
}

// 나눗셈 클래스
class DivideOperation {
    var firstNumber : Double
    var secondNumber : Double
    
    init (_ firstNumber: Double, _ secondNumber: Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
       }
    
    func divide() -> Double? {
        if secondNumber != 0 {
            return Double(Int((firstNumber / secondNumber) * 100)) / 100
        } else {
            print("Error: Cannot divide by zero.")
            return nil
        }
    }
}

let calculator = Calculator(5,3)
let result = calculator.calculate("+")

print("Result : \(result!)")


