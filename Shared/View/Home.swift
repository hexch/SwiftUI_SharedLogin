//
//  Home.swift
//  SharedLoginMacOSAndiOS
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

struct Home: View {
    @StateObject var vm = LoginViewModel()
    var body: some View {
        HStack(alignment: .bottom,spacing: 0){
            VStack{
                HStack{
                    Text("Fitness You\nWanna Have")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.leading, 25)
                    Spacer()
                }
                .padding()
                .overlay(
                    HStack{
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:70)
                            .foregroundColor(.white)
                            .shadow(
                                color:.gray.opacity(0.5),
                                radius: 5, x:2,y:5)
                            .offset(x: -10, y: 30)
                        Spacer()
                        VStack{
                            Image(systemName: "cloud.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:70)
                                .foregroundColor(.white)
                                .shadow(
                                    color:.gray.opacity(0.5),
                                    radius: 5, x:2,y:5)
                            Spacer()
                            
                        }
                    },alignment:.bottomLeading
                )
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .padding(.horizontal)
                
                if !vm.isMacOS{
                    SideLoginView()
                }
            }
            if vm.isMacOS{
                SideLoginView()
            }
        }
        .background(vm.isMacOS ? .clear: Color.gray.opacity(0.5), ignoresSafeAreaEdges: .all)
        .frame(width: vm.isMacOS ? vm.screen.width/2 :nil, height: vm.isMacOS ? vm.screen.height/2 :nil)
        .environmentObject(vm)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct SideLoginView: View{
    @EnvironmentObject var vm: LoginViewModel
    var body: some View{
        ZStack{
            if vm.gotoRegister{
                Register()
                    .transition(.scale)
            }else{
                Login()
                    .transition(.scale)
            }
        }
        .overlay(
            Button(action: {}){
                Image(systemName: "chevron.right")
                    .renderingMode(.template)
                    .resizable()
                    .modifier(LoginButtonModifier())
            }
                .buttonStyle(PlainButtonStyle())
                .offset(x: -65, y: 10)
            ,alignment:.bottomTrailing
        )
        .frame(maxHeight: .infinity)
    }
}
