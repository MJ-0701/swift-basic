import Foundation

// 스위프트에는 구조체와 클래스가 존재 클래스와 구조체는 비슷하게 생겼지만
// 구조체의 인스턴스 : 값 타입
// 클래스의 인스턴스 : 참조 타입

//struct 구조체이름{
//    프로퍼티와 메소드
//    멤버변수 : 프로퍼티
//    멤버 함수 : 메소드
//}

struct User{ // 구조체와 클래스는 대문자로 시작하는 파스칼 표기법
    var nickname : String
    var age : Int
    
    func userinfo() {
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "jack", age: 32)

user.nickname
user.userinfo()





