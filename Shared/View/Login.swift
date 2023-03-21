//
//  Login.swift
//  SharedLoginMacOSAndiOS
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

struct Login: View {
    @EnvironmentObject var loginData: LoginViewModel
    var body: some View {
        VStack(alignment:.leading, spacing: 18){
            Text("Please Login")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)
            Label(title: {
                TextField("Enter Email", text: $loginData.email)
                    .textFieldStyle(PlainTextFieldStyle())
            }, icon: {
                Image(systemName: "envelope")
                    .frame(width:30)
            })
            Divider()
            Label(title: {
                TextField("Enter Password", text: $loginData.password)
                    .textFieldStyle(PlainTextFieldStyle())
            }, icon: {
                Image(systemName: "lock")
                    .frame(width:30)
            })
            Divider()
            HStack{
                Button("Forgot account?"){
                    // TODO
                }
                .buttonStyle(PlainButtonStyle())
                Spacer()
                Button("Create account"){
                    withAnimation{
                        loginData.gotoRegister.toggle()
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            .font(.footnote)
            
        }
        .modifier(LoginViewModifier())
       
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .environmentObject(LoginViewModel())
    }
}
