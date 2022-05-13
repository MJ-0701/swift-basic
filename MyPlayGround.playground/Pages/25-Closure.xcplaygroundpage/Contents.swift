import Foundation

/**
 클로저 : 참조타입 코드에서 전달 및 사용할 수 있는 독립기능 블록이며,  일급 객체의 역할을 할 수 있음 -> 이름없는 함수(익명함수)를 지칭
 일급객체 : 전달 인자로 보낼 수 있고, 변수/상수  등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수 도 있다.
 표현식 :
 {(매개변수) -> 리턴타입 in // in 을 기준으로 클로저 헤드
    실행 구문 // 클로저 바디
 }
 */

let hello = { () -> () in
    print("hello")
    
}

hello() // 호출방법은 함수와 같음.

let hello2 = { (name : String) -> String in
    return "hello, \(name)"
}

//hello2(name : "mj") // -> 클로저에서는 전달인자 레이블을 사용하지 않기 떄문에 이렇게 표기하면 에러남. error: 25-Closure.xcplaygroundpage:23:7: error: extraneous argument label 'name:' in call
hello2("mj") // "hello, mj"

func doSomething(closure : () -> ()){ // 함수의 파라미터 타입
    closure()
}

doSomething(closure: {() ->() in
    print("hello")
})

func doSomething2() -> () -> (){ //  클로저를 return
    return {
        () -> () in
        print("hello4")
    }
}

doSomething2()()

// 후행 클로저 : 클로저를 조금더 읽기 쉽게 바꾸는 방법 단, 후행 클로저는 맨 마지막 매개변수로 전달되는 클로저에게만 해당
doSomething(){ // 파라미터와 반환값이 없는 클로저를 정의 했기때문에 파라미터와 반환값 모두 생략 가능. in 키워드도 생략 가능
    print("hello2")
}

doSomething(){ // 단 하나의 클로저만 매개변수로 전달하는 경우에는 소괄호() 도 생략 가능.
    print("hello3")
}
 
// 매개변수에 클로저가 여러개 있는 경우 다중 후행 클로저 사용 가능
func doSomething2(success : ()->(), fail : () -> () ){
    
}

doSomething2 { // 다중후행 클로저를 사용하는경우 중괄호{} 를 열고 닫음으로써 클로저를 표현 첫번쨰 클로저는 매개변수 레이블을 생략
    <#code#>
} fail: {
    <#code#>
}

// 클로저를 간소화 하여 표현하는 방법
func doSomething3(closure: (Int, Int, Int) -> Int ){
    closure(1,2,3)
}

doSomething3(closure:{ // 간소화 하지 않았을떄
    (a,b,c) in return a+b+c
})

// 간소화
doSomething3(closure:{
     return $0+$1+$2 // 약식인수 사용 약식인수 : 매개변수 이름을 대신하여 사용할수 있는 것
})


doSomething3(closure:{
     $0+$1+$2 // 단일 리턴문만 남으면 리턴 값도 생략 가능
})

doSomething3(){
     $0+$1+$2 // 후행클로저
}

doSomething3{
     $0+$1+$2 // 단하나의 클로저만 매개변수로 전달하는 경우
}
