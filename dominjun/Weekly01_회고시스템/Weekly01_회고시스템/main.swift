//
//  main.swift
//  Weekly01_회고시스템
//
//  Created by 도민준 on 1/26/25.
//

import Foundation

var menuNum = 0
var replections: [String: String] = [:]
var date = ""
var content = ""
var dateArray: [String] = []
var contentArray: [String] = []

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
        replections[date] = content
        //print(replections)
        print("회고가 추가 되었습니다.")
        print()
    case 2:
        print("조회할 날짜를 입력하세요:", terminator: " ")
        date = readLine() ?? ""
        if let contentOfDate = replections[date] {
            print("날짜: \(date)")
            print("내용: \(contentOfDate)")
            print()
        } else {
            print("해당 날짜의 회고가 없습니다.")
            print()
        }
    case 3:
        print("수정할 날짜를 입력하세요:", terminator: " ")
        date = readLine() ?? ""
        if let contentOfDate = replections[date] {
            print("새로운 회고 내용을 입력하세요: ", terminator: " ")
            content = readLine() ?? ""
            replections[date] = content
            //print(replections)
            print("회고가 수정되었습니다.")
            print()
        } else {
            print("해당 날짜의 회고가 없습니다.")
            print()
        }
    case 4:
        print("삭제할 날짜를 입력하세요:", terminator: " ")
        date = readLine() ?? ""
        if let contentOfDate = replections[date] {
            //print(replections)
            replections.removeValue(forKey: date)
            //print(replections)
            print("회고가 삭제되었습니다.")
            print()
        } else {
            print("해당 날짜의 회고가 없습니다.")
            print()
        }
    case 5:
        print("=== 저장된 회고 목록 ===")
        dateArray = Array(replections.keys)
        contentArray = Array(replections.values)
        for i in 0 ..< replections.count {
            print("날짜: \(dateArray[i])")
            print("내용: \(contentArray[i])")
            print()
        }
    default:
        print("잘못된 입력입니다.")
        print()
    }
}

