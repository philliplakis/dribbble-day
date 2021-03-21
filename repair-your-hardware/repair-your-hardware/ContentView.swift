//
//  ContentView.swift
//  repair-your-hardware
//
//  Created by Phillip Lakis on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    @Namespace var namespace
    @State var show: Bool = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {} ) {
                        Circle()
                            .frame(width: 50, height: 60)
                            .overlay(
                                ZStack {
                                    Color(#colorLiteral(red: 0.7490196228027344, green: 0.5137255191802979, blue: 1, alpha: 1))
                                    Image("myAvatar")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 40, height: 40)
                                        .offset(y: 5)
                                }
                                .clipShape(Circle())
                            )
                            .padding(.trailing)
                    }
                }
                
                HStack {
                    Text("Let's Repair \nYour Hardwares")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .padding(.leading)
                        .lineSpacing(6)
                    Spacer()
                }
                            
                Spacer()

                VStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 40, style: .continuous)
                            .frame(width: 160, height: 160)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6745098233222961, blue: 0.1725490242242813, alpha: 1)))
                            .overlay(
                                VStack {
                                    Image("watch")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 120)
                                    
                                    Text("Smart Watch")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .offset(y: -10)
                                }
                            )
                            .padding(.trailing, 8)
                        
                        RoundedRectangle(cornerRadius: 40, style: .continuous)
                            .frame(width: 160, height: 160)
                            .foregroundColor(Color(#colorLiteral(red: 0.9843137264251709, green: 0.32156863808631897, blue: 0.34117648005485535, alpha: 1)))
                            .overlay(
                                VStack {
                                    Image("cam")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 120)
                                    
                                    Text("Camera")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .offset(y: -10)
                                }
                            )
                    }
                    .padding(8)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 40, style: .continuous)
                            .frame(width: 160, height: 160)
                            .foregroundColor(Color(#colorLiteral(red: 0.7803921699523926, green: 0.3137255012989044, blue: 1, alpha: 1)))
                            .overlay(
                                VStack {
                                    Image("headphones")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 120)
                                    
                                    Text("Headphones")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .offset(y: -10)
                                }
                            )
                            .padding(.trailing, 8)
                        
                        RoundedRectangle(cornerRadius: 40, style: .continuous)
                            .frame(width: 160, height: 160)
                            .foregroundColor(Color(#colorLiteral(red: 0.38823530077934265, green: 0.2862745225429535, blue: 1, alpha: 1)))
                            .overlay(
                                VStack {
                                    Image("speaker")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 170,height: 170)
                                    
                                    Text("Speaker")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .offset(y: -35)
                                }
                            )
                    }
                }
                
                Spacer()
               
                VStack {
                    HStack {
                        Text("Hardware Engineers")
                            .font(.system(size: 18, weight: .medium, design: .rounded))
                        Spacer()
                        Button(action: {} ) {
                            GradientText(text: "See All")
                                .frame(width: 55)
                        }
                    }
                    .padding(.horizontal)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)), lineWidth: 2)
                                .frame(width: 60, height: 80)
                                .padding(4)
                                .overlay(
                                    ZStack {
                                        Color(#colorLiteral(red: 1, green: 0.6745098233222961, blue: 0.1725490242242813, alpha: 1))
                                        Image("mrTodd")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                            .offset(y: 5)
                                    }
                                    .clipShape(Circle())
                                )
                            
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)), lineWidth: 2)
                                .frame(width: 60, height: 80)
                                .padding(4)
                                .overlay(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.9843137264251709, green: 0.32156863808631897, blue: 0.34117648005485535, alpha: 1))
                                        Image("mrHooded")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                            .offset(y: 5)
                                    }
                                    .clipShape(Circle())
                                )
                            
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)), lineWidth: 2)
                                .frame(width: 60, height: 80)
                                .padding(4)
                                .overlay(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.38823530077934265, green: 0.2862745225429535, blue: 1, alpha: 1))
                                        Image("mrMe")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                            .offset(y: 5)
                                    }
                                    .clipShape(Circle())
                                )
                            
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)), lineWidth: 2)
                                .frame(width: 60, height: 80)
                                .padding(4)
                                .overlay(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1))
                                        Image("mrGreen")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                            .offset(y: 5)
                                    }
                                    .clipShape(Circle())
                                )
                            
                            
                            Circle()
                                .stroke(Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)), lineWidth: 2)
                                .frame(width: 60, height: 80)
                                .padding(4)
                                .overlay(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.7490196228027344, green: 0.5137255191802979, blue: 1, alpha: 1))
                                        Image("myAvatar")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 60, height: 60)
                                            .offset(y: 5)
                                    }
                                    .clipShape(Circle())
                                )
                            
                            
                        }
                        .padding(.leading)
                    }
                }
                .frame(height: 120)
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack {
                        Image(systemName: "house.fill")
                        RoundedRectangle(cornerRadius: 5)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)),Color(#colorLiteral(red: 0.9137254953384399, green: 0.9607843160629272, blue: 0.5215686559677124, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 15, height: 3, alignment: .center)
                            .padding(.top, 2)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color(#colorLiteral(red: 0.726302824, green: 0.7479459151, blue: 0.7508493963, alpha: 1)))
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "message")
                            .foregroundColor(Color(#colorLiteral(red: 0.726302824, green: 0.7479459151, blue: 0.7508493963, alpha: 1)))
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "person")
                            .foregroundColor(Color(#colorLiteral(red: 0.726302824, green: 0.7479459151, blue: 0.7508493963, alpha: 1)))
                    }
                    Spacer()
                }
                
            }
            .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct GradientText: View {
    let text: String
    let colors = Gradient(colors: [Color(#colorLiteral(red: 0.5372549295425415, green: 0.9803921580314636, blue: 0.5137255191802979, alpha: 1)),Color(#colorLiteral(red: 0.9137254953384399, green: 0.9607843160629272, blue: 0.5215686559677124, alpha: 1))])
    
    var body: some View {
        LinearGradient(gradient: colors, startPoint: .leading, endPoint: .trailing)
            .mask(
                Text(text)
                    .font(.system(size: 14, weight: .medium, design: .rounded))
            )
    }
}
