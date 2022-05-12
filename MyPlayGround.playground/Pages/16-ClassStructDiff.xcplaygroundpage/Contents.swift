import Foundation

/**
 클래스와 구조체 차이
 공통점 :
 1. 값을 저장할 프로퍼티를 선언할 수 있다.
 2. 함수적 기능을 하는 메소드를 선언 할 수 있음.
 3. 내부 값에 .을 사용하여 접근 가능
 4. 생성자를 사용하여 초기값을 세팅할 수 있음.
 5. extesion을 사용하여 기능을 확장할 수 있음.
 6. protocol을 채택하여 기능을 설정할 수 있음.
 
 차이점 :
 클래스 :
 1. 참조타입
 2. ARC 로 메모리 관리
 3. 상속이 가능
 4. 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있음
 5. deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있음
 6. 같은 클래스가 같은 인스턴스를 여러 개의 변수에 할당한 뒤 값을 변경 시키면 모든 변수에 영향을 줌 (메모리(주소)가 복사됨)
 
 구조체 :
 1. 값 타입
 2. 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당 됨.
 3. 즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경 시키더라도 다른 변수에 영향을 주지 않음(값 자체를 복사)
 **/

class SomeClass{
    var countProperty : Int = 0
    
}

struct SomeStruct{
    var countProperty : Int = 0
    
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.countProperty = 3
class1.countProperty // 3

var class4 = SomeClass()
var class5 = SomeClass()
var class6 = SomeClass()

class4.countProperty = 4
class5.countProperty // 0 -> 이경우는 같은 클래스를 공유하는게 아님

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.countProperty = 2
struct3.countProperty = 3

// 구조체는 값 타입이라 같은 구조체 인스턴스를 할당 하더라도 매번 새로운 메모리가 할당 되어서 값을 변경하더라도 다른 구조체의 변수에 영향을 주지 않음.
struct1.countProperty // 0
struct2.countProperty // 2
struct3.countProperty // 3






