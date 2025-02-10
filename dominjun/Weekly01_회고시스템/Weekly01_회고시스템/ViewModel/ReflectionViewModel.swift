//
//  ReflectionViewModel.swift
//  Weekly01_회고시스템
//
//  Created by 도민준 on 2/10/25.
//

import Foundation

class ReflectionViewModel {
    private var reflections: [String: Reflection] = [:]
    
    func addReflection(date: String, content: String) {
        reflections[date] = Reflection(date: date, content: content)
        print("회고가 추가 되었습니다.\n")
    }
    
    func retrieveReflection(date: String) {
        if let reflection = reflections[date] {
            print("날짜: \(reflection.date)")
            print("내용: \(reflection.content)\n")
        } else {
            print("해당 날짜의 회고가 없습니다.\n")
        }
    }
    
    func updateReflection(date: String) {
        if reflections[date] != nil {
            print("새로운 회고 내용을 입력하세요: ", terminator: " ")
            var newContent = readLine() ?? ""
            reflections[date]?.content = newContent
            print("회고가 수정되었습니다.\n")
        } else {
            print("해당 날짜의 회고가 없습니다.\n")
        }
    }
    
    func deleteReflection(date: String) {
        if reflections.removeValue(forKey: date) != nil {
            print("회고가 삭제되었습니다.\n")
        } else {
            print("해당 날짜의 회고가 없습니다.\n")
        }
    }
    
    func printAllReflection() {
        print("=== 저장된 회고 목록 ===")
        for reflection in reflections.values {
            print("날짜: \(reflection.date)")
            print("내용: \(reflection.content)")
        }
    }
}
