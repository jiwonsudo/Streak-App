//
//  LandingPageView.swift
//  Streak
//
//  Created by 정지원 on 2/14/24.
//

import SwiftUI

struct LandingPageView: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("매일매일 쌓아가는 \n습관을 만들어 볼까요?")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 32, weight: .bold))
                    .padding(.bottom, 16)
                
                TextField("이름 또는 별명", text: $username)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.black, lineWidth: 1)
                    )
                    .font(.system(size: 20, weight: .bold))
                
                Spacer().frame(height: 30)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("시작하기")
                        .foregroundStyle(.black)
                        .bold()
                })
                .frame(maxWidth: .infinity)
                .padding()
                .background(.accent)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                
                Spacer().frame(height: 30)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("이미 Streak 계정이 있으신가요?")
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                        .underline()
                })
                
            }
            
            Spacer()
            
            VStack {
                Text("또는")
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("카카오로 시작하기")
                        .foregroundStyle(.black)
                        .bold()
                })
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.init(hexString: "FEE500"))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
        .padding([.leading, .trailing], 30)
    }
}

#Preview {
    LandingPageView()
}
