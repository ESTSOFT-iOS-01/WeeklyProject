//
//  Reflection.swift
//  Weekly01_회고시스템
//
//  Created by 도민준 on 2/10/25.
//

import Foundation

struct Reflection {
    let date: Date
    var content: String
    
    // 날짜를 문자열 형태로 변환 (시간 정보 제거)
    var dateString: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.timeStyle = .none
        return formatter.string(from: date)
    }
}
