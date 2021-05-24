//
//  orisaleApp.swift
//  orisale
//
//  Created by Phillip Lakis on 24/5/21.
//

import SwiftUI

@main
struct orisaleApp: App {
    @State var show = false

    var body: some Scene {
        WindowGroup {
            if (show) {
                ContentView()
            } else {
                WelcomeView(show: $show)
            }
        }
    }
}
