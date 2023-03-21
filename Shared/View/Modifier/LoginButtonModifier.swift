//
//  LoginButtonModifier.swift
//  SharedLoginMultPlatform
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

struct LoginButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .aspectRatio(contentMode: .fit)
            .frame(width:20,height: 20)
            .padding(12)
            .foregroundColor(.white)
            .background(
                LinearGradient(gradient: .init(colors: [Color.purple,Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .clipShape(Circle())
    }
}
