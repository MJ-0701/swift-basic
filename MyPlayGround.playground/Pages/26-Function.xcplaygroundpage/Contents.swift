import Foundation

/*
 고차함수 : 다른 함수를 파라미터(전달인자)로 받거나 리턴값이 함수인 경우
 map, filter, reduce
 */

// map : 컨테이너 내부의 기존 데이터를 변형하여 새로운 컨테이너를 생성
let numbers = [0,1,2,3]
let mapArray = numbers.map{ (nummber) -> Int in
    return nummber * 2
    
}
print("map \(mapArray)")

// filter : 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter{$0 > 5} // 5보다 큰값을 걸러냄
print("filter \(filterArray)")

// reduce : 컨테이너 내부의 요소를 하나로 통합 시켜줌
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce (0){ // 2를 넣었을떄 17 : 2 + 1 + 2 + 3 + 4 + 5 = 17
    (result : Int , element : Int) -> Int in // result : 누적 값 , element : 배열의 요소 값. -> 각 요소값을 더한 값이 reduceResult 변수 값에 대입 됨.
    print("\(result) + \(element)")
    return result + element
}
print("reduceResult \(reduceResult)")
