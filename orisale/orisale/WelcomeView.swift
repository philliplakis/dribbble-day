//
//  WelcomeView.swift
//  orisale
//
//  Created by Phillip Lakis on 24/5/21.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var show: Bool

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1176470588, green: 0.6509803922, blue: 0.9882352941, alpha: 1))
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Group {
                    Text("Welcome to")
                        .font(.custom("Poppins-Regular", size: 18))
                    Text("Orisale")
                        .font(.custom("Poppins-Bold", size: 58))
                }
                .foregroundColor(.white)
                
                HStack {
                    Rectangle()
                        .frame(width: 260, height: 300, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.3843137255, green: 0.7529411765, blue: 0.9960784314, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                    Rectangle()
                        .frame(width: 260, height: 350, alignment: .center)
                        .foregroundColor(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                        .padding()
                    Rectangle()
                        .frame(width: 260, height: 300, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.3843137255, green: 0.7529411765, blue: 0.9960784314, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                }
                
                Text("The complete sales app for your company.")
                    .font(.custom("Poppins-Regular", size: 16))
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Spacer()
                
                Rectangle()
                    .frame(width: 260, height: 70, alignment: .center)
                    .overlay(
                        Text("Get Started")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundColor(.white)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .padding()
                    .onTapGesture {
                        show.toggle()
                    }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(show: .constant(false))
    }
}
