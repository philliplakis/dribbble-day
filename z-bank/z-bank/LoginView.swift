//
//  LoginView.swift
//  z-bank
//
//  Created by Phillip Lakis on 8/3/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.007843137718737125, green: 0.0117647061124444, blue: 0.09019608050584793, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                Rectangle()
                    .frame(width: 160, height: 190)
                    .clipShape(CustomCorner(corner: [.bottomLeft, .bottomRight], size: 5))
                    .foregroundColor(.white)
                Spacer()
            }
            .ignoresSafeArea()

            
            VStack(alignment: .center) {
                Spacer()
                Text("Z Bank")
                    .font(.system(size: 64, weight: .black))

                Text("Z Bank is easy, secure and lets you do all the things you need to do to manage your money remotely")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 24)

                Button(action: { } ) {
                    Text("Sign me up")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.007843137718737125, green: 0.0117647061124444, blue: 0.09019608050584793, alpha: 1)))
                        .padding()
                        .frame(width: 300, height: 65)
                        .background(Color(#colorLiteral(red: 0.772549033164978, green: 0.7843137383460999, blue: 0.9921568632125854, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                }
                
                Spacer()
                Text("Already have an account? Log in")
                    .font(.system(size: 16, weight: .light, design: .rounded))

            }
            .padding()
            .foregroundColor(.white)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
