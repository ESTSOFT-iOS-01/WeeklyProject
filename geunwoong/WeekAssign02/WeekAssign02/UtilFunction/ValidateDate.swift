/*
 File: ValidateDate.swift
 Purpose: 입력받은 날짜의 유효성 판단
 
 Data
 - date: String // 1차 검사로 nil이 아닌 값이 들어옴
 - regex: 정규식 // yyyy-mm-dd 그중에서도 mm은 01~09,10~12까지, dd는 01~09,10~29,30,31만 가능하다
 - dateArr: [String] // [0]: yyyy, [1]: mm, [2]: dd 형태
 
 etc
 - 정규식을 활용한 date.wholeMatch(of: regex)는 판단만 하면 되서 '_' 처리
 - 2월과 30일까지인 달 처리가 먼가 예쁘지 않다. 나중에 하나로 합쳐보자
*/
import Foundation
extension ReflectionSystem {
    // 유효성 검사
    func validateDate(date: String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.date(from: date)
    }
}
