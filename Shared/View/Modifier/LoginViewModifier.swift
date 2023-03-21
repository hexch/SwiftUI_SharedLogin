//
//  LoginViewModifier.swift
//  SharedLoginMultPlatform
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

struct LoginViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .padding(.bottom)
            .background(Color.white)
            .cornerRadius(25)
            .padding(.vertical)
            .padding(.horizontal,20)
        
    }
}
