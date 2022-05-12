import Foundation

class Vehicle{
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("speaker on")
    }
}

// swift 상속
/*
 class 클래스 이름 : 부모클래스 이름{
    하위클래스 정의
 }
 */

class Bicycle : Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()

bicycle.currentSpeed = 15.0
bicycle.currentSpeed

// override
class Train : Vehicle{
    override func makeNoise() {
        super.makeNoise() // speaker on 이 돼야 소리가 나온다고 가정.
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

// property override
class Car : Vehicle{
    var gear = 1
    override var description: String{
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

/* swift 는 프로퍼티 옵저버로 didSet / willSet 을 제공한다. 얘네들의 역할은 프로퍼티 값이 변경되기 직전, 직후를 감지하는 것.
 */

class AutoMaticCar : Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutoMaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar : \(automatic.description)")

