import Foundation

//class 클래스이름{ 클래스에서는 생성자를 정의 해줘야하는데 기본생성자는 제공 됨.
//    프로퍼티 + 메소드
//}

class Dog{
    var name : String = ""
    var age : Int = 0
    init(){
        // 기본 생성자
        // 인스턴스를 생성하고 ,초기화 할때 사용
    }
    
    func dogInfo(){
        print("name : \(name) age : \(age)")
    }
}

var dog = Dog() // Dog 클래스의 인스턴스 생성
dog.name = "coco"
dog.age = 2
dog.dogInfo()

