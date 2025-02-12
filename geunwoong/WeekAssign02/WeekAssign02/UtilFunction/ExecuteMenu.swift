/*
 File: ExecuteMenu.swift
 Purpose: 입력받은 메뉴에 따른 메뉴 실행
 
 Data
 - menu: ReflectionSystemMenu (케이스에 대한 설명은 ReflectionSystemMenu.swift 참고)

 etc
 - enum에 에러 상태를 추가했는데 여기에 해당 하는 에러를 추가 (+ 연관값...?)
*/
extension ReflectionSystem {
    func executeMenu(menu: ReflectionSystemMenu) {
        switch menu {
        case .addReflection: addReflection()
        case .searchReflection: searchReflection()
        case .editReflection: editReflection()
        case .deleteReflection: deleteReflection()
        case .printAllReflection: printMenuBoard()
        case .exitProgram: exitProgram()
        case .none: print("에러발생")
        }
    }
}
