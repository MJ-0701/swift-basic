import Foundation

 // 프로토콜 : 특정 역할을 하기 위한 메서드,프로퍼티,기타 요구사항 등의 청사진 // 자바의 인터페이스

/*
protocol 이름 {
 
 }
 */

protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

struct SomeStructure: SomeProtocol, SomeProtocol2{ // 여러개 사용 가능.
    
}

/*
 class SomeClass : SomeSuperclass, FirstProtocol, AnotherProtocol {
 
 }
 */


protocol FirstProtocol {
    var name: Int {get set} // 읽기, 쓰기
    var age : Int {get} // 읽기
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set} // 프로토콜에서 타입 프로퍼티를 요구하려면 항상 스태틱을 써줘야함.
}

protocol FullyNames {
    var fullName : String { get set }
    func printFullName()
    
}

struct Person: FullyNames{
    var fullName: String
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3 {
    func someTypeMethod()
}

protocol SomeProtocol4 {
    init(someParameter: Int)
}

protocol SomeProtocol5{
    init()
}

class SomeClass: SomeProtocol5{
    required init() {
        
    }
}
