//
//  ContentView.swift
//  Streak
//
//  Created by 정지원 on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var hasSplashShown = false  // TODO: Change this to false when dev is completed
    @State private var isLoggedIn = false
    
    var body: some View {
        ZStack {
            if hasSplashShown {
                if isLoggedIn {
                    Text("View if Logged In")
                } else {
                    LandingPageView()
                }
            } else {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {  // Show Splash Screen for 0.5 seconds
                            withAnimation {
                                hasSplashShown = true
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
