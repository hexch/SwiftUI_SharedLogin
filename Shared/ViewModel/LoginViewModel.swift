//
//  LoginViewModel.swift
//  SharedLoginMultPlatform
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email:String = ""
    @Published var password:String = ""
    
    @Published var reEnter:String = ""
    
    @Published var gotoRegister: Bool = false
    
    var screen: CGRect{
#if os(iOS)
        return UIScreen.main.bounds
#else
        return NSScreen.main!.visibleFrame
#endif
    }
    @Published var isMacOS = false
    init() {
#if !os(iOS)
        self.isMacOS = true
#endif
    }
}
