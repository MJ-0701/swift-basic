import Foundation

/*
 스위프트에서는 run-time 에러 발생시
 발생(throwing), 감지(catching), 전파(propagating), 조작(manipulating) 을 지원하는 클래스를 제공
 */

enum PhonError : Error {
    case unknown
    case batteryLow(batteryLevel : Int)
}

print("test")

// throw PhonError.batteryLow(batteryLevel: 20) 실행 안됨

func checkPhonoeBatterystatus(batteryLevel : Int) throws -> String {
    guard batteryLevel != -1 else { throw PhonError.unknown}
    guard batteryLevel > 20 else {
        throw PhonError.batteryLow(batteryLevel: 20)}
    return "배터리 상태 정상"
}

/*
 do {
  try 오류발생 가능 코드
 } catch 오류 패턴{
    처리코드
 }
 */

do{
    try checkPhonoeBatterystatus(batteryLevel: 20)
}catch PhonError.unknown{
    print("알 수 없는 에러")
}catch PhonError.batteryLow(let batteryLevel){
    print("배터리 전원 부족 현재 남은 용량 : \(batteryLevel)%")
}catch {
    print("그 외 오류 발생 : \(error)") // catch 블록 내부에 암시적(묵시적?) 으로 error함수가 지역상수로 있고 오류패턴을 명시해주지 않으면 에러 상수에 에러내용이 들어옴.
}

let status = try? checkPhonoeBatterystatus(batteryLevel: -1) // try? -> 오류를 옵셔널 값으로 변환하여 처리 가능
print(status) // try? 를 통해 동작하는 코드가 오류를 던지면 nil을 반환 -> 함수가 unknown 이라는 에러를 던져주기 떄문에 nil 이 되고 error를 던져주지 않으면 옵셔널 값이 출력됨.

let status2 = try! checkPhonoeBatterystatus(batteryLevel: 30) // try! -> 에러발생 확률이 0% 일떄 사용. 개발자가 에러를 발생할 수 있는 함수 값에 대한 보증 -> 만약 에러가 발생하게 되면 runtimeexception이 발생하여 프로그래밍이 강제로 종료됨.
print(status2) // 에러 발생시 : __lldb_expr_13/24-Try-Catch.xcplaygroundpage:45: Fatal error: 'try!' expression unexpectedly raised an error: __lldb_expr_13.PhonError.unknown



