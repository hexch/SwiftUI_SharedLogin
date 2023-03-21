//
//  SharedLoginMultPlatformApp.swift
//  SharedLoginMultPlatform
//
//  Created by XIAOCHUAN HE on R 5/03/21.
//

import SwiftUI

@main
struct SharedLoginMultPlatformApp: App {
    var body: some Scene {
#if os(iOS)
        WindowGroup {
            IOSContentView()
        }
        #else
        
        WindowGroup {
            MacOSContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        #endif
    }
}
