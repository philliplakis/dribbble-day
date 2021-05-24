//
//  ContentView.swift
//  orisale
//
//  Created by Phillip Lakis on 24/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1))
                .ignoresSafeArea()

            VStack {

                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 18, weight: .light))
                        .padding(12)
                        .background(Color(#colorLiteral(red: 0.9345296025, green: 0.9278536439, blue: 0.9396417737, alpha: 1)))
                        .clipShape(Circle())
                        .padding(.leading, 24)
                    
                    Spacer()
                    
                    Text("Orisale")
                        .font(.custom("Poppins-Bold", size: 26))
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 18, weight: .light))
                        .padding(8)
                        .background(Color(#colorLiteral(red: 0.9345296025, green: 0.9278536439, blue: 0.9396417737, alpha: 1)))
                        .clipShape(Circle())
                        .padding(.trailing, 24)
                    
                }
                
                HStack {
                    Rectangle()
                        .frame(width: 150, height: 175, alignment: .center)
                        .foregroundColor(Color.white)
                        .overlay(
                            VStack(alignment: .leading) {
                                HStack {

                                    Image(systemName: "moon.fill")
                                        .foregroundColor(Color.white.opacity(0.6))
                                        .font(.system(size: 13, weight: .light))
                                        .padding(8)
                                        .background(Color(#colorLiteral(red: 0.9882352941, green: 0.737254902, blue: 0.01960784314, alpha: 1)))
                                        .clipShape(Circle())
                                        .shadow(color: Color(#colorLiteral(red: 0.9882352941, green: 0.737254902, blue: 0.01960784314, alpha: 1)).opacity(0.4), radius: 4, x: 0, y: 4)
                                    
                                    Spacer()
                                    
                                    Text("+20 Orders")
                                        .foregroundColor(Color(#colorLiteral(red: 0.6573556066, green: 0.7600710988, blue: 0.8649327159, alpha: 1)))
                                        .font(.custom("Poppins-bold", size: 10))
                                        .padding(6)
                                        .background(Color(#colorLiteral(red: 0.9763380885, green: 0.9828669429, blue: 0.9901779294, alpha: 1)))
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                }
                                Spacer()

                                Text("180K")
                                    .font(.custom("Poppins-Bold", size: 34))
                                
                                HStack {
                                    Text("Orders")
                                        .font(.custom("Poppins-Medium", size: 14))
                                    Spacer()

                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 13, weight: .bold))
                                        .padding(.horizontal)
                                }
                            }
                            .padding()
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .shadow(color: Color.black.opacity(0.04), radius: 10, x: -10, y: 10)
                        .padding(.leading)
                        .padding(.trailing, 4)

                    Rectangle()
                        .frame(width: 150, height: 175, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1176470588, green: 0.6509803922, blue: 0.9882352941, alpha: 1)))
                        .overlay(
                            VStack(alignment: .leading) {
                                HStack {
                                    
                                    Image(systemName: "moon.fill")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1176470588, green: 0.6509803922, blue: 0.9882352941, alpha: 1)).opacity(0.6))
                                        .font(.system(size: 13, weight: .light))
                                        .padding(8)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .clipShape(Circle())
                                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4), radius: 4, x: 0, y: 4)
                                    
                                    Spacer()
                                    
                                    Text("+205 Items")
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.custom("Poppins-bold", size: 10))
                                        .padding(6)
                                        .background(Color(#colorLiteral(red: 0.1021560803, green: 0.7079359889, blue: 1, alpha: 1)))
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                }
                                Spacer()
                                
                                Text("20K")
                                    .font(.custom("Poppins-Bold", size: 34))
                                
                                HStack {
                                    Text("Items")
                                        .font(.custom("Poppins-Medium", size: 14))
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 13, weight: .bold))
                                        .padding(.horizontal)
                                }
                            }
                            .padding()
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .shadow(color: Color.black.opacity(0.04), radius: 10, x: -10, y: 10)
                        .padding(.trailing)
                        .padding(.leading, 4)
                }
                
                HStack {
                    Text("Sale Report")
                        .font(.custom("Poppins-Medium", size: 14))
                        .padding(.leading, 24)
                    Spacer()
                }
                .padding()
                
                Rectangle()
                    .frame(width: 320, height: 200, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.9425240755, green: 0.962054193, blue: 0.977124393, alpha: 1)))
                    .overlay(
                        VStack{
                            Spacer()
                            HStack(alignment: .bottom) {
                                Spacer()
                                Rectangle()
                                    .frame(width: 45, height: 90, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.09313993901, green: 0.652248919, blue: 1, alpha: 1)))
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                Spacer()
                                Rectangle()
                                    .frame(width: 45, height: 75, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6172327399, green: 0.8697338104, blue: 1, alpha: 1)))
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                Spacer()
                                Rectangle()
                                    .frame(width: 45, height: 60, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6172327399, green: 0.8697338104, blue: 1, alpha: 1)))
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                Spacer()
                                Rectangle()
                                    .frame(width: 45, height: 45, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6172327399, green: 0.8697338104, blue: 1, alpha: 1)))
                                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                Spacer()
                            }
                            Spacer()
                            Rectangle()
                                .frame(width: 320, height: 80, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)))
                                .overlay(
                                    HStack {
                                        Spacer()
                                        Image(systemName: "waveform.path.ecg")
                                            .foregroundColor(Color(#colorLiteral(red: 0.9999127984, green: 1, blue: 0.9998814464, alpha: 1)))
                                            .font(.system(size: 14, weight: .semibold))
                                            .padding(8)
                                            .background(Color(#colorLiteral(red: 0.9882352941, green: 0.737254902, blue: 0.01960784314, alpha: 1)))
                                            .clipShape(Circle())
                                            .shadow(color: Color(#colorLiteral(red: 0.9882352941, green: 0.737254902, blue: 0.01960784314, alpha: 1)).opacity(0.4), radius: 4, x: 0, y: 4)
                                        Spacer()

                                        VStack(alignment: .leading) {
                                            Text("5M")
                                                .font(.custom("Poppins-Bold", size: 20))
                                            Text("Revenue")
                                                .font(.custom("Poppins-Regular", size: 14))
                                        }
                                        Spacer()

                                        VStack(alignment: .leading) {
                                            Text("20K")
                                                .font(.custom("Poppins-Bold", size: 20))
                                            Text("Items Sold")
                                                .font(.custom("Poppins-Regular", size: 14))
                                        }
                                        Spacer()

                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 13, weight: .bold))
                                            .padding(.horizontal)
                                    }
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                        }
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .shadow(color: Color.black.opacity(0.04), radius: 10, x: -10, y: 10)
                
                Spacer()
                
                HStack {
                    Text("Recent Orders")
                        .font(.custom("Poppins-Medium", size: 14))
                        .padding(.leading, 26)
                    Spacer()
                }
                .padding()
                
                Rectangle()
                    .frame(width: 320, height: 100, alignment: .center)
                    .foregroundColor(Color.white)
                    .overlay(
                        HStack {
                            
                            Image("drink")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50)
                                .rotationEffect(.degrees(-40))
                                .padding(.horizontal)
                            

                            VStack(alignment: .leading) {
                                Text("Nutrion C")
                                Text("omega 100")
                                Spacer()
                                Text("4 Item")
                                    .foregroundColor(Color(#colorLiteral(red: 0.778042376, green: 0.7781553864, blue: 0.7780176997, alpha: 1)))
                            }
                            .font(.custom("Poppins-Bold", size: 14))
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("ID 004")
                                    .font(.custom("Poppins-light", size: 12))
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 13, weight: .bold))
                                Spacer()
                            }
                        }
                        .padding()
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                    .shadow(color: Color.black.opacity(0.04), radius: 10, x: -10, y: 10)
                    .padding(.bottom)
                
                Spacer()
                
                ZStack {
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 380, height: 200)
                        .padding(.top)
                    
                    Image(systemName: "plus.square")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .light))
                        .padding(24)
                        .background(Color(#colorLiteral(red: 0.09274692088, green: 0.09276696295, blue: 0.09274255484, alpha: 1)))
                        .clipShape(Circle())
                        .shadow(color: Color(#colorLiteral(red: 0.09274692088, green: 0.09276696295, blue: 0.09274255484, alpha: 1)).opacity(0.4), radius: 4, x: 0, y: 4)
                        .offset(y: -80)
                    
                    HStack{
                        Image("home-alt")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                        
                        Spacer()
                        
                        Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32)
                            .clipShape(Circle())
                    }
                    .padding(80)
                    .offset(y: -45)
                }
            }
            .offset(y: 70)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
