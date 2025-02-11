//
//  DateHelper.swift
//  Weekly01_회고시스템
//
//  Created by 도민준 on 2/11/25.
//

import Foundation

class DateHelper {
    // 싱글톤
    static let shared = DateHelper()
    
    private let dateFormats = [
        "yyyy-MM-dd",      // 2025-04-12
        "yyMMdd",          // 250412
        "yyyy년 M월 d일"   // 2025년 4월 12일
    ]
    
    private var formatters: [DateFormatter] = []
    
    private init() {
        formatters = dateFormats.map { format in
            let formatter = DateFormatter()
            formatter.dateFormat = format
            formatter.locale = Locale(identifier: "ko_KR")
            formatter.timeZone = TimeZone(identifier: "Asia/Seoul")
            return formatter
        }
    }
    
    func stringToDate(from input: String) -> Date? {
        for formatter in formatters {
            if let date = formatter.date(from: input) {
                return date
            }
        }
        return nil
    }
}
