//
//  Register.swift
//  SharedLoginMacOSAndiOS
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

struct Register: View {
    @EnvironmentObject var registerData: LoginViewModel
    var body: some View {
        VStack(alignment:.leading, spacing: 18){
            Label(title: {
                Text("Please Register")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }, icon: {
                Button(action: {
                    withAnimation{
                        registerData.gotoRegister.toggle()
                    }
                }, label: {
                    
                    Image(systemName: "arrow.left")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width:20 ,height:20)
                })
                .buttonStyle(PlainButtonStyle())
            })
            Label(title: {
                TextField("Enter Email", text: $registerData.email)
                    .textFieldStyle(PlainTextFieldStyle())
            }, icon: {
                Image(systemName: "envelope")
                    .frame(width:30)
            })
            Divider()
            Label(title: {
                TextField("Enter Password", text: $registerData.password)
                    .textFieldStyle(PlainTextFieldStyle())
            }, icon: {
                Image(systemName: "lock")
                    .frame(width:30)
            })
            
            Divider()
            Label(title: {
                TextField("Re-Enter", text: $registerData.reEnter)
                    .textFieldStyle(PlainTextFieldStyle())
            }, icon: {
                Image(systemName: "lock")
                    .frame(width:30)
            })
        }
        .modifier(LoginViewModifier())
        
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
            .environmentObject(LoginViewModel())
    }
}
