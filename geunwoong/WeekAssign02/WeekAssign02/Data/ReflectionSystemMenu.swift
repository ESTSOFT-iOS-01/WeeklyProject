/*
 File: ReflectionSystemMenu.swift
 Purpose: 회고 시스템의 메뉴에서 사용할 열거형 정의
 
 Data
 - 시스템 메뉴의 입력값을 케이스화
 - 각 메뉴는 주석 참조

 etc
 -
*/
import Foundation

enum ReflectionSystemMenu: Int {
    case addReflection = 1 // 회고 추가
    case searchReflection = 2 // 회고 검색
    case editReflection = 3 // 회고 수정
    case deleteReflection = 4 // 회고 삭제
    case printAllReflection = 5 // 회고 전체 출력
    case exitProgram = 6 // 회고 프로그램 종료
    case none = -1
}
