//
//  ContentView.swift
//  Streak
//
//  Created by 정지원 on 1/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("main_logo_min")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Text("Streak")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
