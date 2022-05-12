import Foundation

// 프로퍼티 : 클래스, 구조체, 열거형 등에 관련된 값.
// 인스턴스에 소속된 변수 및 속성
// 1. 저장 프로퍼티 : 인스턴스의 변수 또는 상수 2. 연산 프로퍼티 : 값을 저장하는것이 아니라 특정 연산을 실행하는 결과값  3. 타입 프로퍼티 : 특정 타입에서 사용하는 프로퍼티  등이 있음.

// 저장 프로퍼티
struct Dog{ // 구조체 내에 저장된 변수 or 상수를 저장 프로퍼티라고 부름.
    var name : String
    let gender : String
}

var dog = Dog(name: "jin", gender: "male")
print(dog)

dog.name = "jin2"
print(dog)

let dog2 = Dog(name: "jjin", gender: "female")
//dog2.name = "jjin2" // 에러 -> 구조체는 값 타입 이기 떄문에 프로퍼티가 변수여도 구조체가 상수로 선언되면 상수로 취급된다.

class Cat{
    var name : String
    let gender : String
    
    init(name : String, gender : String){
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "cat", gender: "male") // 클래스는 참조 타입이기 떄문에 상수로 선언 하여도 안에 매개변수 값은 변경 가능함.(프로퍼티가 상수이면 변경 불가능)

cat.name = "cat2"
print(cat.name) // 변경 가능

struct Stock {
    var averagePrice : Int
    var quantity : Int
    var purchasePrice : Int { // 계산형 프로퍼티
        get{
            return averagePrice * quantity
        }
        
//        set(newPrice){
//            averagePrice = newPrice / quantity
//        }
        
        set{ // 파라미터값을 직접 커스텀 하지 않으면 디폴트 값인 newValue 로 사용 가능
            averagePrice = newValue / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice // getmethod
stock.purchasePrice = 3000 // setmethod
stock.averagePrice // 1000

class Account{
    var credit : Int = 0 {
        // 프로퍼티 옵저버
//        willSet{ // 값이 저장되기 직전에 호출되는 wilset 옵저버 : 새로 저장될 프로퍼티의 값을 상수 매개변수로 전달
//            print("잔액이 \(credit)원 에서 \(newValue)원 으로 변경될 예정 입니다.") // 디폴트
//        }
        
        willSet(newPrice){ // 값이 저장되기 직전에 호출되는 wilset 옵저버 : 새로 저장될 프로퍼티의 값을 상수 매개변수로 전달
            print("잔액이 \(credit)원 에서 \(newPrice)원 으로 변경될 예정 입니다.") // 커스텀
        }
        
//        didSet{ // 값이 저장된 직후 호출되는 didset 옵저버
//            print("잔액이 \(oldValue)원 에서 \(credit)원 으로 변경 되었습니다.") // 디폴트
//        }
        
        didSet(oldPrice){ // 값이 저장된 직후 호출되는 didset 옵저버
            print("잔액이 \(oldPrice)원 에서 \(credit)원 으로 변경 되었습니다.") // 커스텀
        }
    }
}

var account = Account()
account.credit = 1000 // 변경 전 :  wilSet 구문 실행 변경 후 : didSet 구문 실행

// 타입 프로퍼티 : 인스턴스의 생성 없이 객체내의 프로퍼티 접근을 가능하게 하는것 프로퍼티 타입 자체와 연결하는것 을 말함
struct SomeStruct{ // 저장 프로퍼티와 연산 프로퍼티 에서만 사용 가능하고 스태틱 키워드를 사용하여 정의함.
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty : Int {
        return 1
    }
}
// 인스턴스를 생성 안해도 사용 가능
SomeStruct.computedTypeProperty
SomeStruct.storedTypeProperty
SomeStruct.storedTypeProperty = "hello"
SomeStruct.storedTypeProperty





