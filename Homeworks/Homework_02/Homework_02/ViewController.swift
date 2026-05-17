import UIKit

class ViewController: UIViewController {

    let tuplesArray = [(1, "x"), (4, "y"), (6, "a")]

    override func viewDidLoad() {
        super.viewDidLoad()
        print(processedArray(tuplesArray))
        print(sqrt(of: tuplesArray))
        print(filteredArray(tuplesArray))
        print(sortedArray(tuplesArray))
    }

    /*
     Массив из кортежей - возвести Int в квадрат, отфильтровать только четные Int и упорядочить по строкам по возрастанию
     var x = [(1, "x"), (4, "y"), (6, «a»)]
     Все это В ОДНУ СТРОКУ! Функции высшего порядка
     На выходе МАССИВ КОРТЕЖЕЙ
     */

    private func processedArray(_ tuplesArray: [(Int, String)]) -> [(Int, String)] {
        tuplesArray.map( { ($0.0 * $0.0, $0.1) } ).filter( { $0.0 % 2 == 0 } ).sorted(by: ( { $0.1 < $1.1 } ))
    }

    private func sqrt(of tuplesArray: [(Int, String)]) -> [(Int, String)] {
        tuplesArray.map( { ($0.0 * $0.0, $0.1) } )
    }

    private func filteredArray(_ tuplesArry: [(Int, String)]) -> [(Int, String)] {
        tuplesArry.filter( { $0.0 % 2 == 0 } )
    }

    private func sortedArray(_ tuplesArray: [(Int, String)]) -> [(Int, String)] {
        tuplesArray.sorted(by: { $0.1 < $1.1 } )
    }


}

