//
//  main.swift
//  Weekly01_회고시스템
//
//  Created by 도민준 on 1/26/25.
//

import Foundation

var reflectionManager = ReflectionViewModel()
var menuNum = 0
var date = ""
var content = ""

print("""
=== 회고 시스템 ===
1. 회고 추가
2. 회고 조회
3. 회고 수정
4. 회고 삭제
5. 전체 회고 목록 출력
6. 종료
""")
print()

while true {
    print("메뉴를 선택하세요:", terminator: " ")
    
    menuNum = Int(readLine() ?? "0") ?? 0
    
    if menuNum == 6 {
        print("프로그램을 종료합니다.")
        break
    }
    
    switch menuNum {
    case 1:
        print("날짜를 입력하세요 (예: 2024-12-25):", terminator: " ")
        date = readLine() ?? ""
        print("회고 내용을 입력하세요:", terminator: " ")
        content = readLine() ?? ""
        reflectionManager.addReflection(date: date, content: content)
        //replections[date] = content
        //print(replections)
        
    case 2:
        print("조회할 날짜를 입력하세요:", terminator: " ")
        date = readLine() ?? ""
        reflectionManager.retrieveReflection(date: date)
    case 3:
        print("수정할 날짜를 입력하세요:", terminator: " ")
        date = readLine() ?? ""
        reflectionManager.updateReflection(date: date)
    case 4:
        print("삭제할 날짜를 입력하세요:", terminator: " ")
        date = readLine() ?? ""
        reflectionManager.deleteReflection(date: date)
        
    case 5:
        reflectionManager.printAllReflection()
    default:
        print("잘못된 입력입니다.")
        print()
    }
}

