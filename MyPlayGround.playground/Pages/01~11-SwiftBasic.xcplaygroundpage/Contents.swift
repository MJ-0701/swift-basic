import UIKit

var greeting = "Hello, playground"

for i in 0...99{
    i
}

// 스위프트 자료형
// Int : 64bit 정수형
// UInt : 부호가 없는 64bit 정수형
// Float : 32bit 부동 소수점
// Double : 64bit 부동 소수점
// Bool : true, false
// Chatacter : 문자
// String : 문자열
// Any : 모든 타입을 지칭하는 키워드 (자바 제네릭?)

var someInt : Int = 100
someInt = Int(1.1) // 스위프트 캐스팅

// 스위프트 컬렉션 타입
// Array : 데이터 타입의 값들을 순서대로 지정하는 리스트 (파이썬 배열과 같고 자바의 배열과는 다른듯.)
// Dictionary : 순서없이 키와 값 (키 / 밸류 매핑) 한 쌍으로 데이터를 저장하는 컬렉션 타입 (자바의 map)
// Set : 같은 데이터 타입의 값을 순서없이 저장하는 리스트

var numbers : Array<Int> = Array<Int>() // 기본적인 Array 생성 방법
var numbers2 : Array<Int> = [] // 현재까지는 위랑 같은거 같음.

numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers2.append(1)
numbers2.append(2)
numbers2.append(3)

numbers.insert(4, at: 2) // insert() 중간에 값을 삽입하는 함수 (넣을값 , 위치)
numbers2.insert(4, at: 2)

numbers.remove(at: 2) // remove() 값을 지우는 함수 (위치)
numbers

var names : [String] = [] // 이렇게 축약하여 생성 가능

// 딕셔너리 생성방법
var dic : Dictionary<String, Int> = Dictionary<String,Int>()
var dic1 : [String:Int] = ["초기값 세팅 가능": 1] // 축약형
dic1["다음 값"] = 2
dic1

dic1.removeValue(forKey: "초기값 세팅 가능")
dic1

// Set : 순서 없고 데이터 중복을 허용하지 않음.
var set : Set = Set<Int>() // 축약형 없음.

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(20)
set // 순서가 없기 때문에 출력순서 규칙이 없고, 중복을 허용하지 않기 떄문에 중복해서 들어간 값이 하나만 출력되는 것을 볼 수 있다.

set.remove(30)
set // 30은 2번 insert 를 해줬지만 한번만 들어간 것을 확인 할 수 있다.

// 함수의 정의 func 함수명 (파라미터이름 : 데이터타입) -> 반환타입 {return 반환값}
func sum(a : Int , b: Int) -> Int{
    return a+b
}

sum(a: 1, b: 2)

func hello() -> String {
    return "Hello"
}

hello()

func printName() { // return type void
    
}

func printName2() -> Void {
    
}

func greeting(friend : String , me : String = "mj"){
    print ("hello \(friend)! I'm \(me)") // "\()" -> 코틀린에서 "${}" 와 유사.
}

greeting(friend: "james")

/*
 전달인자 레이블
 func 함수이름 (전달인자 레이블 : 매개변수 이름 : 매개변수 타입 , 전달인자 레이블 : 매개변수 이름 : 매개변수 타입 ) -> 반환 타입{
 
    return 반환값
 }
 */

func sendMessage(from me : String, to friend : String) -> String { // from to -> 전달인자 레이블 가독성이 높아짐.
    
    return "Hello \(friend) I'm \(me)"
}

sendMessage(from: "mj", to: "jb")

// 기존 언어처럼 전달인자 레이블을 사용하지 않을시 와일드 카드 식별자를 사용.
func sendMessage2(_ name : String) -> String { // 파라미터 앞에 _ 를 사용하면 전달인자 레이블을 사용하지 않는 함수를 구현한것.
    
    return "I'm \(name)"
}

sendMessage2("mj") // 파라미터 이름 없이 값만 넘기도록 호출 할 수 있음.

// 스위프트는 파라미터로 몇개의 값이 들어올지 모를때 가변 매개변수를 사용 할 수 있고, 함수당 하나만 사용 할 수 있음. 가변 매개 변수는 0개 이상의 값이 들어올수 있고 가변 매개변수로 들어 온 값은 배열처럼 사용 할 수 있음.
func sendMessage3(me : String = "mj", friends : String ...) -> String { // 파라미터 타입 뒤에...으로 가변 매개변수를 지정 할 수 있음.
    return "Hello \(friends) I'm \(me)"
}

sendMessage3(friends: "jb", "json", "james")

// swift 조건문 if,switch,guard

/*
 if 조건식 {
    실행 구문
 }
 */

let age = 21

if (age < 19) { // 조건식에 () 없이도 가능. -> 기존언어랑 똑같이 사용 가능.
    print("미성년자 입니다. ")
}else {
    print ("성인 입니다.")
}

/*
 switch 비교대상{
    case 패턴1:
        패턴1 일치할 때 실행되는 구문
    case 패턴2:
        패턴2 일치할 때 실행되는 구문
    default :
        어느 비교 패턴과도 일치하지 않을때 실행되는 구문
 }
 */

let color  = "red"

switch color {
case "blue" :
    print("파란색 입니다.")
case "green" :
    print ("초록색 입니다.")
default :
    print("지정 되지 않은 색 입니다.")
}

// 비교패턴은 특정 값 뿐만 아니라 범위 연산자를 사용 할 수 있음.

let temperature = -30

switch temperature {
case -20...0 :
    print("겨울")
case 1...10 :
    print("봄,겨울")
case 10...30 :
    print("여름")
default :
    print("예외")
}

/*
 swift 반복문 for-in while, repeat-while
 */

/*
 for 루프상수 in 순회대상 {
    // 실행구문
 }
 */

for i in 1...4{
    print(i)
}

let array = [1,2,3,4,5]

for i in array{
    print(i)
}

/*
 while 조건식 { // while 문은 조건이 만족하는 동안 계속 실행
    실핼할 구문
 }
 */

var number = 5

while number < 10 {
    number+=1
}

number // 10

/*
 repeat-while -> java 의 do-while : 적어도 반드시 한번은 구문을 실행
 repeat {
    // 실행 할 구문
 } while 조건식
*/

var x = 6

repeat{
    x+=2
} while x < 5

print(x) // while 조건은 맞지 않지만 repeat 으로 인해 반드시 실행이 되므로 8이 출력된다.

/*
 옵셔널(optional) 있을수도 없을수도 있다. nil = null
*/

var name : String? = nil // nil
var name2 : String? // 옵셔널의 경우 초기값이 nil로 지정 된다.

/*
 optional 해제 방법 : 명시적 해제 / 묵시적 해제
 명시적 해제 : 강제 해제 / 비강제 해제(옵셔널 바인딩)
 묵시적 해제 : 컴파일러에 의한 자동 해제 옵셔널의 묵시적 해제
 */

var optionalNumber : Int? = 3
print(optionalNumber) // optional(3)
print(optionalNumber!) // 3 ! -> 값이 있다는 보증(코틀린의 !!) -> 강제로 옵셔널을 해제 하는 것이기 떄문에 위험 할 수 있음.

// 안전하게 옵셔널을 해제해주는 비강제 해제 옵셔널 바인딩

if let result = optionalNumber {
    print(result) // 3
}else{
    
}

func optionaltest(){
    let number : Int? = 5
    guard let result = number else {return}
    print(result)
}

// if 문으로 옵셔널을 추출 할 경우 if문 안에서만 사용 할 수 있지만, guard 문으로 추출 할 경우 gruard 문으로 추출한 함수 내에서 사용 가능. 가드문은 조건이 트루 일떄만 가드문을 통과하고, false 일경우 else 문을 수행한 뒤 흐름을 종료시킴.
optionaltest()


let value : Int? = 6

if value == 6 {
    print(value, "묵시적 해제")
}else {
    print(value, "실패")
}

// 묵시적 해제
let string = "12"
var stringToInt : Int! = Int(string) // !
print(stringToInt+1)






