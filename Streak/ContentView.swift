//
//  ContentView.swift
//  Streak
//
//  Created by 정지원 on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMainView = false // TODO: Change this to true when dev is completed
    
    var body: some View {
        ZStack {
            if showMainView {
                Text("This is Main View")
            } else {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation {
                                showMainView = true
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
