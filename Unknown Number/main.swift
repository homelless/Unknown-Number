//
//  main.swift
//  Unknown Number
//
//  Created by @hmlssgd on 08.09.2023.
//


//генерация случайного числа
let randomNamber = UInt8.random(in: 1...250)

print("Компьютер случайным образом загадал число. Вам требуется отгадать его")
// в переменную будут записываться числа с консоли
var myNamber: String?
//цикл с постпроверкой условия

repeat {
    print("Введите ваш вариант и нажмите Enter")
    // получение значения с клавиатуры пользователя
    myNamber = readLine()
    //сравнение введенного и сгенерированного чисел
    if (UInt8(myNamber!) == randomNamber) {
        print("Вы угадали")
    } else if (UInt8(myNamber!)! < randomNamber) {
        print("Ваш вариант меньше загаданного числа")
    } else if (UInt8(myNamber!)! > randomNamber) {
        print("Ваш вариант больше загаданного числа")
    }
} while randomNamber != UInt8(myNamber!)
