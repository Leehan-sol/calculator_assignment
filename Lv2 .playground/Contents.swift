class Calculator {
    var firstNumber : Double
    var secondNumber : Double
    
    init (_ firstNumber: Double,_ secondNumber: Double){
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber}
    
    func add() -> Double {
        return firstNumber + secondNumber
    }
    
    func subtract() -> Double {
        return firstNumber - secondNumber
    }
 
    func multiply() -> Double {
        return firstNumber * secondNumber
    }
 
    
    func divide() -> Double? {
            if secondNumber != 0 {
                return Double(Int((firstNumber / secondNumber) * 100)) / 100
            } else {
                print("Error: Cannot divide by zero.")
                return nil
            }
    }
    
    func remainder() -> Double? {
        if secondNumber != 0 {
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
        } else {
            print("Error: Cannot remainder by zero.")
            return nil
        }
    }
    
    func calculate(_ operation: String) -> Double? {
            switch operation {
            case "+":
                return add()
            case "-":
                return subtract()
            case "*":
                return multiply()
            case "/":
                return divide()
            case "%":
                return remainder()
            default:
                return 0
            }
        
    }
    
}


let calculator = Calculator(3.3,1.5)
let result = calculator.calculate("%")

print("Result : \(result!)")
