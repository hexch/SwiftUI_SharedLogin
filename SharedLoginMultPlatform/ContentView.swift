//
//  ContentView.swift
//  SharedLoginMultPlatform
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Home()
        // Always light mode
            .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
