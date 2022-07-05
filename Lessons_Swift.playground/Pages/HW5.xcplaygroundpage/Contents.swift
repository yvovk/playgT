//: [Previous](@previous)

import Foundation


/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

//Sollution

var gameResults = [String : [String]]()
gameResults = [
    "Салават Юлаев": ["3:6","5:5"],
    "Авангард": ["2:1","2:3"],
    "АкБарс": ["3:3","1:2"]
]

for (key, values) in gameResults {
    for value in values {
        print("Game with \(key) - \(value)")
    }
}

/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */

//my sollutin that not working well:)
/*func ageCount (day dnumber: Int,month mnumber: Int, year ynumber: Int) {
   
    let date = Date()
    let calendar = Calendar.current
    
    let currentDay = calendar.component(.day, from: date)
    let currentMonth = calendar.component(.month, from: date)
    let currentYear = calendar.component(.year, from: date)
    
    
    var yearResult = 0
    var monthResult = 0
    var dayResult = 0
   
    //calculate years
    yearResult = currentYear - ynumber
    
    //calculate the difference between current month and pasted month
    monthResult = currentMonth - mnumber
    
    // if difference negative
    if monthResult < 0 {
       yearResult = yearResult - 1
        monthResult = 12 - mnumber + currentMonth
    }
    
    //calculate days
    if currentDay > dnumber {
        dayResult = currentDay - dnumber // for this case calcultaing right
    } else if currentDay < 0 {
        //need to think more on this
       
    } else if currentDay == dnumber {
      dayResult = 0
    }
    
    print("Survived for \(dayResult) days, \(monthResult) month and \(yearResult) years")
}

print(ageCount(day: 2, month: 11, year: 1995))*/


// answer
func calculateTimeInterval(fromDay day: Int, month: Int, year: Int) {
    let currentDate = Date()
    let calendar = Calendar.current
    let dateComponents = DateComponents(year: year, month: month, day: day)

    if let someDateTime = calendar.date(from:dateComponents){
        let dayPassed = calendar.dateComponents([.day],from: someDateTime, to:
             currentDate).day ?? 0 // dont quite understand how ?? 0 works
        let monthPassed = calendar.dateComponents([.month],from: someDateTime, to:
             currentDate).month ?? 0
        let yearPassed = calendar.dateComponents([.year],from: someDateTime, to:
             currentDate).year ?? 0
        
        print("Survived for  \(yearPassed) years, \(monthPassed) month, \(dayPassed) days ")
    }
}
              
calculateTimeInterval(fromDay: 12, month: 12, year: 1999)

/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */
func sumCalculation (Wallet wallet: Int...) -> Int {
   var total = 0
    for money in wallet {
        total += money
    }
    return total
}
// 3.2 Заполните массив различными купюрами и подсчитайте общую сумму

sumCalculation(Wallet: 50,500,100)


/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */

func checkerForEven (number: Int) -> Bool  {
    number % 2 == 0
}

checkerForEven(number: 10)

/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/

func divisionOn3 (number: Int) -> Bool {
    return number % 3 == 0
}

divisionOn3(number: 7)

/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */

func newArray (x:Int, y: Int) -> [Int] {
    return Array(x...y)
}
print(newArray(x: 2, y: 20))

/*4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */

print(newArray(x: 1, y: 100))

/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */

var array = newArray(x: 1, y: 100)

array.removeAll(where:checkerForEven)
array.removeAll(where:divisionOn3 )
    
print(array)


/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1905, функция возвратит 20. Для 1899 возвратит 19
 */
func centryCallc (year: Int) -> Int {
   let centry = (year + 99) / 100
    return centry
}

print(centryCallc(year: 2021))


/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */
// couldn't figure out by myself , copied from lesson 6 (bouth cases)
 func generateArrayOfFibonacciNumbers(n:Int)->[Int]{
       guard n >= 0 else {
              return[]
         }
         var currentItem=0
         var nextItem=1
         var resultArray=[Int]()
     
     for _ in 0..<n {
              resultArray.append(nextItem)
              let sum = currentItem + nextItem
              currentItem = nextItem
              nextItem=sum
     }
         return resultArray

 }
generateArrayOfFibonacciNumbers(n: 6)

func getFibonacciArrayV3(n:Int)->[Int]{
    switch n {
    case ...0:
        return[]
    case 1:
        return[1]
    case 2:
        return[1,1]
    default:
        let resultArray = getFibonacciArrayV3(n: n - 1)
        return resultArray + [resultArray[n-3] + resultArray[n-2]]
    }
}
getFibonacciArrayV3(n: 6)




/*### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
*/
//New sollution for this task
// функція для виведення привітання з днем народження
func birthDayGreet(years: Int) -> Void {
  print(
  "WOW, you have birthday today. You are \(years) old!",
  terminator: "\n"
  )
}

// функція для створення дати за роком, місяцем та днем. Потрібна для того, щоб створити дату з першим числом попереднього місяця і використати в функції нижче
func makeDate(year: Int, month: Int, day: Int) -> Date {
  let calendar = Calendar(identifier: .gregorian)
  let components = DateComponents(year: year, month: month, day: day)
  return calendar.date(from: components)!
}

// функція для  отримання кількості днів з дати. Повертає число: 28, 30, 31
func daysInMonth(date: Date) -> Int {
  let calendar = Calendar.current
  let interval = calendar.dateInterval(of: .month, for: date)!
  let days = calendar.dateComponents([.day], from: interval.start, to: interval.end).day!
  return days
}

func differenceBetweenBirthAndCurrentDate(birthDay: Int, birthMonth: Int, birthYear: Int) -> Void  {
    let date = Date()
    let calendar = Calendar.current
    let fullMonthsAmount = 12
 
    let currentYear = calendar.component(.year, from: date)
    let currentMonth = calendar.component(.month, from: date)
    let currentDay = calendar.component(.day, from: date)

    // змінні де будуть записуватись прожиті дні, місяці, роки
    var livedDays = 0
    var livedMonths = 0
    var livedYears = 0
 
    livedYears = currentYear - birthYear
    // якщо збігається день та місяць поточної та дати народження - отже сьогодні день народження з точним числом скільки років
    if (currentDay == birthDay && currentMonth == birthMonth) {
      birthDayGreet(years: livedYears)
      return
    }

    let monthsDiff = currentMonth - birthMonth
    let daysDiff = currentDay - birthDay

    if (daysDiff == 0) {
      if (monthsDiff > 0) {
        livedMonths = monthsDiff
      } else {
        livedYears -= 1
        livedMonths = fullMonthsAmount - abs(monthsDiff)
      }
    }

    if (daysDiff > 0) {
      if (monthsDiff > 0) {
        livedMonths = monthsDiff
      } else {
        livedYears -= 1
        // abs функція(математична і вже вбудована), яка перетворює число на позитивне. Тобто позитивне залишається позитивним, а негативне робить негативним. Приклад - число "7" буде "7", а число "-2" буде "2"

        // від загальної кількості місяців віднімаємо різницю місяців, але з ковертацією до позитивного числа, щоб не вийшло більше 12 :)
        livedMonths = fullMonthsAmount - abs(monthsDiff)
      }
      livedDays = daysDiff
    }

    if (daysDiff < 0) {
      // попередньо створюємо дату з першим днем попереднього місяця і визначаємо скільки було днів в ньому. Це потрібно тому, що різниця днів є меншою, а ніж нуль - що означає, що з попереднього місяця нам потрібно забрати якусь кількість днів
      let previousMonth = makeDate(year: birthYear, month: currentMonth - 1, day: 1)
      let daysInPreviousMonth = daysInMonth(date: previousMonth)
      if (monthsDiff > 0) {
        livedMonths = monthsDiff - 1
        livedDays = daysInPreviousMonth - abs(daysDiff)
      } else {
        livedYears -= 1
        livedMonths = fullMonthsAmount - abs(monthsDiff) - 1
        livedDays = daysInPreviousMonth - abs(daysDiff)
      }
    }

    print("Your age: \(livedYears) year(s), \(livedMonths) month(s), \(livedDays) day(s)")
}

// 27 years, 1 month, 18 days
print(differenceBetweenBirthAndCurrentDate(birthDay: 14, birthMonth: 5, birthYear: 1995))

// 26 years, 7 months, 28 days
print(differenceBetweenBirthAndCurrentDate(birthDay: 4, birthMonth: 11, birthYear: 1995))

// 22 years, 0 months, 29 days
print(differenceBetweenBirthAndCurrentDate(birthDay: 3, birthMonth: 6, birthYear: 2000))

// 21 years, 8 months, 28 days
print(differenceBetweenBirthAndCurrentDate(birthDay: 4, birthMonth: 10, birthYear: 2000))

// 20 years
print(differenceBetweenBirthAndCurrentDate(birthDay: 2, birthMonth: 7, birthYear: 2002))

// 21 years, 6 months, 20 days
print(differenceBetweenBirthAndCurrentDate(birthDay: 12, birthMonth: 12, birthYear: 2000))
