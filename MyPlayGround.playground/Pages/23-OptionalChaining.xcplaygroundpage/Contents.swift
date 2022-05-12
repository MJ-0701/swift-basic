import Foundation

// 옵셔널 체이닝 : 옵셔널에 속해있는 nil 일지도 모르는 프로퍼티, 메소드, 서브스크립션 등을 가져오거나 호출 할 떄 사용할 수 있는 일련의 과정

struct Developer{
    let name : String
    
}

struct Company{
    let name : String
    var developer : Developer?
    
}

var developer = Developer(name : "jack")
var company = Company(name:"mj", developer : developer)

print(company.developer)
print(company.developer?.name)
print(company.developer!.name)
