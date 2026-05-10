import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // 01. Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций)

        func overloadFunc() {
            func add(_ left: Int, _ right: Int) -> Int {
                left + right
            }

            func add(_ left: Double, _ right: Double) -> Double {
                left + right
            }

            func sub(_ left: Int, _ right: Int) -> Int {
                left - right
            }

            func sub(_ left: Double, _ right: Double) -> Double {
                left - right
            }

            func mul(_ left: Int, _ right: Int) -> Int {
                left * right
            }

            func mul(_ left: Double, _ right: Double) -> Double {
                left * right
            }

            func div(_ left: Int, _ right: Int) -> Int {
                left / right
            }

            func div(_ left: Double, _ right: Double) -> Double {
                left / right
            }
        }

        // 02. Вычислить сумму цифр четырехзначного числа

        func caclcSumOfDigits(in num: Int) -> Int {
            var n = num
            var sum = 0

            while n > 0 {
                sum += n % 10
                n /= 10
            }

            return sum
        }

        // 03. Функция сравнения строк - "авб" меньше "ввш"

        func compareTwoStrings(_ left: String, _ right: String) -> Bool {
            left < right
        }

        // 04. Циклический вызов функции - поломать приложение

        func infiniteLoop() {
            infiniteLoop()
        }


        // 05. Функция возведения в степень с дефолтным параметром

        func getPow(_ num: Double, power: Double = 2) -> Double {
            pow(num, power)

        }

        // 06. Функция вычисления факториала числа

        func getFactorial(for num: Int) -> Int {
            var factorial = 1
            for n in 1...num {
                factorial *= n
            }
            return factorial
        }
    }
}
