import Foundation

// 열거형 : 연관된 값들의 모임.

//enum CompassPoint {
//    case north
//    case south
//    case east
//    case west
//}
//
//var direction = CompassPoint.east
//
//direction = .west
//
//switch direction {
//
//case .north:
//    print("north")
//case .east:
//    print("east")
//case .south:
//    print("south")
//case .west:
//    print("west")
//}


enum CompassPoint : String {
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서"
}

var direction = CompassPoint.east

direction = .west

switch direction {

case .north:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .south:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

let direction2 =  CompassPoint(rawValue: "남")

enum PhoneError {
    case unknown
    case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

switch error {
    
case .unknown:
    print("알수없는 에러 입니다.")
case .batteryLow(let message):
    print(message)
}

