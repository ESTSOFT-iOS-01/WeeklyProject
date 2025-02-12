/*
 File: UserMenuInput.swift
 Purpose: 유저의 메뉴 입력을 받는 함수
 
 Data
 - input: String // 입력받은 메뉴의 String값
 - menuNum: Int // String 값을 Int로 바꾸고 범위부터 확인
 - menu: ReflectionSystemMenu // 1~6이면 정상적인 메뉴로 보고 케이스를 반환

 etc
 -
 
*/
extension ReflectionSystem {
    func userMenuInput() -> ReflectionSystemMenu {
        print("메뉴를 선택하세요: ", terminator: "")
        // 사용자의 입력을 받음
        guard let input = readLine(), let menuNum = Int(input), menuNum >= 1 && menuNum <= 6 else {
            return .none
        }
        // 메뉴 케이스로 변경
        guard let menu = ReflectionSystemMenu(rawValue: menuNum) else {
            print("메뉴 번호를 SystemMenu로 못바꿈\n")
            return .none
        }
        
        return menu
    }
}
