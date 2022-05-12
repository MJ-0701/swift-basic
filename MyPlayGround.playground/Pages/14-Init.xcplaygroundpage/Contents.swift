import Foundation

// 초기화 : 클래스 또는 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정 -> 생성자

/**
 초기화 구문은 클래스나 구조체 열거형 안에 정의할수 있고
 init(매개변수: 타입, .... ){ -> 스위프트도 오버로딩 가능
    // 프로퍼티 초기화
    // 인스턴스 생성시 필요한 설정을 해주는 코드 작성
 }
 */

class User{
    var nickname : String
    var age : Int
    
    init(nickname : String, age : Int){
        self.nickname = nickname
        self.age = age
    }
    
    init(age : Int){ // 오버로딩
        self.nickname = "mj"
        self.age = age
    }
    
    deinit{ // 생성자와 반대 -> 클래스의 인스턴스에서만 가능
        print("deinit user")
    }
}

var user = User(nickname: "jack", age: 32)

user.nickname
user.age

var user2 = User(age: 30)
user2.nickname
user2.age

var user3 : User? = User(age: 30)
user3 = nil // 스위프트는 인스턴스가 더 이상 필요하지 않으면 자동으로 메모리의 소멸을 시킴 -> nil 을 대입했으므로 스위프트가 더이상 필요없다고 판단하여 deinit 시킴


