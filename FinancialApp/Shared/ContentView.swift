//
//  ContentView.swift
//  Shared
//
//  Created by Phillip Lakis on 29/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9529411792755127, green: 0.9529411792755127, blue: 0.9882352948188782, alpha: 1)), Color.white]), center: .center, startRadius: 5, endRadius: 500).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(#colorLiteral(red: 0.8980392217636108, green: 0.8980392217636108, blue: 0.9764705896377563, alpha: 1)))
                        .frame(width: 40, height: 40, alignment: .center)
                    
                    Spacer()
                    Text("Investments")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(#colorLiteral(red: 0.27450981736183167, green: 0.26274511218070984, blue: 0.8274509906768799, alpha: 1)))
                        .frame(width: 40, height: 40, alignment: .center)
                }
                Spacer()
                
                Text("Portfolio")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .font(.system(size: 16, weight: .medium, design: .rounded))

                Text("$811,505.21")
                    .font(.system(size: 44, weight: .medium, design: .monospaced))
                
                HStack {
                    Text("- $227")
                        
                    Text("$0.08%")
                        .foregroundColor(Color(#colorLiteral(red: 0.21568627655506134, green: 0.686274528503418, blue: 0.3137255012989044, alpha: 1)))
                    
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(Color(#colorLiteral(red: 0.21568627655506134, green: 0.686274528503418, blue: 0.3137255012989044, alpha: 1)))
                }
                .padding(12)
                .font(.system(size: 20, weight: .medium, design: .monospaced))
                
                
                Group {
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 250, alignment: .center)
                            .shadow(color: Color(#colorLiteral(red: 0.9529411792755127, green: 0.9529411792755127, blue: 0.9882352948188782, alpha: 1)), radius: 10.0, x: 4, y: 4)
                            .overlay(
                                VStack(alignment: .leading) {
                                    Text("GOOG")
                                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                        .font(.system(size: 12, weight: .medium, design: .rounded))
                                        .padding(.top,8)

                                    Text("Alphabet, Inc.")
                                        .font(.system(size: 16, weight: .medium, design: .rounded))
                                    Spacer()
                                    Text("$90,998.34")
                                        .font(.system(size: 18, weight: .medium, design: .monospaced))
                                        .padding(.bottom)
                                }
                            )
                            
                            .padding(8)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(#colorLiteral(red: 0.27450981736183167, green: 0.26274511218070984, blue: 0.8274509906768799, alpha: 1)))
                            .frame(width: 150, height: 250, alignment: .center)
                            .padding(8)

                    }
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 250, alignment: .center)
                            .padding(8)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 250, alignment: .center)
                            .padding(8)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
