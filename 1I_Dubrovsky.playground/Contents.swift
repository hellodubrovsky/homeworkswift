import Foundation

// 1. Решить квадратное уравнение.
//
//let a: Int = 2
//let b: Int = 2
//let c: Int = 2
//
//let d = b ^ 2 * 4 * a * c
//
//if d == 0 {
//    print("1")
//} else if d < 0 {
//    print("0")
//} else if d > 0 {
//    print("2")
//}


func quadratic(a: Int, b: Int, c: Int) -> [Int?] {
    
    if a != 0 {
        let d = b ^ 2 - 4 * a * c
        
        // Выявляю кол-во корней. Если корни есть, высчитываю их и добавляю в массив.
        switch d {
        case ..<0:
            print("Дискриминант (\(d)) меньше 0. Уравнение не имеет корней. Возвращаю пустой массив.")
            return []
        case 1...:
            let x1 = (-b + Int(sqrt(Double(d)))) / (2 * a)
            let x2 = (-b - Int(sqrt(Double(d)))) / (2 * a)
            print("Дискриминант (\(d)) больше 0. В массив добавлено 2 корня.\nКорень X1 = \(x1)\nКорень Х2 = \(x2)")
            return [x1, x2]
        default:
            let x = -b / (2 * a)
            print("Дискриминант (\(d)) равен 0. В массив добавлен 1 корень.\nКорень X = \(x)")
            return [x]
        }
    } else {
        print("Значение 'а' не может быть равно 0. Возвращаю пустой массив.")
        return []
    }
}

var f = quadratic(a: 1, b: 2, c: 3)
print(f)

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
