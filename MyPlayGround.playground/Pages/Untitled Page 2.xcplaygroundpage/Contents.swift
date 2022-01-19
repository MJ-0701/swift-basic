import Foundation

class SomeClass{
    var count: Int = 0
}

struct SomeStruct{
    var count : Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2

class1.count

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count
// 클래스와 구조체의 차이점 : 클래스(참조 타입)는 복사본과 원본이 모두 같은 값을 가짐 구조체는 값 타입이라 같은 구조체의 인스턴스를 할당 하더라도 매번 새로운 메모리가 할당 되어서 값을 변경하더라도 다른 구조체의 변수에 영향을 주지 않음. 
