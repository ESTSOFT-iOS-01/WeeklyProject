//
//  main.swift
//  Weekly01
//
//  Created by 김도연 on 2/7/25.
//

import Foundation

public var reflectionDictionary = [String: String]()

getUserInput()
private func printMenus() {
    print("=== 회고 시스템 ===")
    print("1. 회고 추가\n2. 회고 조회\n3. 회고 수정\n4. 회고 삭제\n5. 전체 회고 목록 출력\n6. 종료")
}

// main func
func getUserInput() {
    printMenus()
    while true {
        print("메뉴를 입력하세요:", terminator: " ")
        let input = Int(readLine()!)
        
        switch input {
        case 1 :
            addReflection()
        case 2 :
            readReflection()
        case 3 :
            updateReflection()
        case 4 :
            deleteReflection()
        case 5 :
            getAllReflections()
        case 6 :
            print("프로그램을 종료합니다.")
            return
        default:
            print("잘못된 메뉴 선택입니다.")
            printMenus()
        }
    }
}

private func addReflection() {
    print("날짜를 입력하세요 (예: 2024-12-25):", terminator: " ")
    let input = readLine() ?? ""
    if input == "" {
        print("입력된 날짜가 없습니다.")
        return
    }
    
    print("회고 내용을 입력하세요:", terminator: " ")
    let content = readLine() ?? ""
    if content == "" {
        print("입력된 회고가 없습니다.")
        return
    }
    
    reflectionDictionary[input] = content
    print("회고가 추가되었습니다.")
}

private func readReflection() {
    print("조회할 날짜를 입력하세요:", terminator: " ")
    let input = readLine() ?? ""
    if input == "" {
        print("입력된 날짜가 없습니다.")
        return
    }
    
    guard let content = reflectionDictionary[input] else {
        print("해당 날짜의 회고가 없습니다.")
        return
    }
    
    print("날짜: \(input)")
    print("내용: \(content)")
}

private func updateReflection() {
    print("수정할 날짜를 입력하세요:", terminator: " ")
    let input = readLine() ?? ""
    if input == "" {
        print("입력된 날짜가 없습니다.")
        return
    }
    
    guard reflectionDictionary[input] != nil else {
        print("해당 날짜의 회고가 없습니다.")
        return
    }
    
    print("새로운 회고 내용을 입력하세요:", terminator: " ")
    let content = readLine() ?? ""
    if content == "" {
        print("입력된 회고가 없습니다.")
        return
    }
    
    reflectionDictionary[input] = content
    print("회고가 수정되었습니다.")
}

private func deleteReflection() {
    print("삭제할 날짜를 입력하세요:", terminator: " ")
    let input = readLine() ?? ""
    if input == "" {
        print("입력된 날짜가 없습니다.")
        return
    }
    guard reflectionDictionary[input] != nil else {
        print("해당 날짜의 회고가 없습니다.")
        return
    }
    
    reflectionDictionary.removeValue(forKey: input)
    print("회고가 삭제되었습니다.")
}

private func getAllReflections() {
    if reflectionDictionary.isEmpty {
        print("저장된 회고가 없습니다.")
        return
    }
    
    print("=== 저장된 회고 목록 ===")
    for (key, value) in reflectionDictionary {
        print("날짜: \(key)")
        print("내용: \(value)")
        print("")
    }
}
