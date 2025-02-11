//
//  ReflectionViewModel.swift
//  Weekly01_회고시스템
//
//  Created by 도민준 on 2/10/25.
//

import Foundation

class ReflectionViewModel {
    //날짜를 키 값으로 정하기 위해
    //private 메서드를 통해서만 접근 가능하게 하여 데이터 무결성 유지
    private var reflections: [Date: Reflection] = [:]
    
    // 메뉴 출력
    func printMenu() {
        print("""
        === 회고 시스템 ===
        1. 회고 추가
        2. 회고 조회
        3. 회고 수정
        4. 회고 삭제
        5. 전체 회고 목록 출력
        6. 종료\n
        """)
    }
    
    // 회고 추가
    func addReflection(dateString: String) {
        guard let date = DateHelper.shared.stringToDate(from: dateString) else {
            print("잘못된 날짜 형식입니다.\n")
            return
        }
        
        let normalizedDate = Calendar.current.startOfDay(for: date) // 시간 제거
        print("조회 변환된 날짜: \(normalizedDate)")  // 디버깅용 출력
        
        print("회고 내용을 입력하세요:", terminator: " ")
        let content = readLine() ?? ""
        
        reflections[date] = Reflection(date: date, content: content)
        print("회고가 추가 되었습니다.\n")
    }
    
    // 회고 조회
    func retrieveReflection(dateString: String) {
        guard let date = DateHelper.shared.stringToDate(from: dateString) else {
            print("잘못된 날짜 형식입니다.\n")
            return
        }
        
        if let reflection = reflections[date] {
            print("날짜: \(reflection.dateString)")
            print("내용: \(reflection.content)\n")
        } else {
            print("해당 날짜의 회고가 없습니다.\n")
        }
    }
    
    // 회고 수정
    func updateReflection(dateString: String) {
        guard let date = DateHelper.shared.stringToDate(from: dateString) else {
            print("잘못된 날짜 형식입니다.\n")
            return
        }
        
        if reflections[date] != nil {
            print("새로운 회고 내용을 입력하세요: ", terminator: " ")
            let newContent = readLine() ?? ""
            reflections[date]?.content = newContent
            print("회고가 수정되었습니다.\n")
        } else {
            print("해당 날짜의 회고가 없습니다.\n")
        }
    }
    
    // 회고 삭제
    func deleteReflection(dateString: String) {
        guard let date = DateHelper.shared.stringToDate(from: dateString) else {
            print("잘못된 날짜 형식입니다.\n")
            return
        }
        
        if reflections.removeValue(forKey: date) != nil {
            print("회고가 삭제되었습니다.\n")
        } else {
            print("해당 날짜의 회고가 없습니다.\n")
        }
    }
    
    // 전체 회고 목록 출력
    func printAllReflection() {
        print("=== 저장된 회고 목록 ===")
        for reflection in reflections.values {
            print("날짜: \(reflection.dateString)")
            print("내용: \(reflection.content)")
        }
    }
}
