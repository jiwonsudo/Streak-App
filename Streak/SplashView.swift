//
//  SplashView.swift
//  Streak
//
//  Created by 정지원 on 2/8/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("main_logo_min")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
    }
}

#Preview {
    SplashView()
}
