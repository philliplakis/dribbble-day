//
//  ContentView.swift
//  Financial App
//
//  Created by Phillip Lakis on 29/3/21.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9529411792755127, green: 0.9529411792755127, blue: 0.9882352948188782, alpha: 1)), Color.white]), center: .center, startRadius: 5, endRadius: 500).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(#colorLiteral(red: 0.8980392217636108, green: 0.8980392217636108, blue: 0.9764705896377563, alpha: 1)))
                        .frame(width: 40, height: 40, alignment: .center)
                        .overlay(
                            Image(systemName: "line.horizontal.3").foregroundColor(Color(#colorLiteral(red: 0.7098039388656616, green: 0.6980392336845398, blue: 0.8901960849761963, alpha: 1)))
                        )
                    
                    Spacer()
                    Text("Investments")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                    Image("girl")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
                Spacer()
                
                Text("Portfolio")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .padding()
                
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
                .font(.system(size: 18, weight: .medium, design: .monospaced))
                
                
                Group {
                    HStack {
                        ChartCard(
                            Ticker: "GOOG",
                            CompanyName: "Alphabet, Inc.",
                            Value: "$90,998.34",
                            ChartData: [0.2, 0.23, 0.33, 0.34, 0.53, 0.59, 0.74, 0.69, 0.59, 0.74, 0.87, 0.66, 0.84, 0.78, 0.93, 0.88, 0.76, 0.88, 0.97]
                        )
                    
                        ChartCard(
                            Active: true,
                            Ticker: "AAPL",
                            CompanyName: "Apple, Inc.",
                            Value: "$115,505.21",
                            ChartData: [0.55, 0.53, 0.63, 0.54, 0.53, 0.59, 0.74, 0.69, 0.89, 0.74, 0.87, 0.86, 0.84, 0.78, 0.93, 0.88, 0.86, 0.88, 0.97]
                        )
                        
                    }
                    HStack {
                        ChartCard(
                            Ticker: "MSFT",
                            CompanyName: "Microsoft, Corp.",
                            Value: "$31,751.79",
                            ChartData: [0.55, 0.53, 0.50, 0.54, 0.53, 0.59, 0.64, 0.69, 0.59, 0.74, 0.87, 0.76, 0.74, 0.78, 0.83, 0.88, 0.76, 0.88, 0.77]
                        )
                        
                        ChartCard(
                            Ticker: "FB",
                            CompanyName: "Facebook, Inc.",
                            Value: "$52,011.65",
                            ChartData: [0.55, 0.53, 0.63, 0.74, 0.63, 0.68, 0.74, 0.69, 0.89, 0.74, 0.87, 0.86, 0.84, 0.68, 0.993, 0.65, 0.86, 0.88, 0.97]
                        )
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

struct ChartCard: View {
    var Active: Bool = false
    var Ticker: String
    var CompanyName: String
    var Value: String
    var ChartData: Array<Float>
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(Active ? Color(#colorLiteral(red: 0.27450981736183167, green: 0.26274511218070984, blue: 0.8274509906768799, alpha: 1)) : Color.white)
            .frame(width: 160, height: 250, alignment: .center)
            .shadow(color: Color(#colorLiteral(red: 0.9529411792755127, green: 0.9529411792755127, blue: 0.9882352948188782, alpha: 1)), radius: 10.0, x: 4, y: 4)
            .overlay(
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text(Ticker)
                            .foregroundColor(Active ? Color.white : Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) )
                            .font(.system(size: 12, weight: .medium, design: .rounded))
                            .padding(.bottom, 1)
                        Text(CompanyName)
                            .foregroundColor(Active ? Color.white : Color.black )
                            .font(.system(size: 14, weight: .bold, design: .rounded))

                    }
                    .padding(12)
                    
                    ZStack {
                       if Active {
                            Chart(data: [0.665, 0.63, 0.53, 0.58, 0.53, 0.59, 0.74, 0.69, 0.89, 0.74, 0.87, 0.66, 0.94, 0.88, 0.63, 0.8, 0.82, 0.98, 0.97])
                                .chartStyle(LineChartStyle(.line, lineColor: Color(#colorLiteral(red: 0.4117647111415863, green: 0.4000000059604645, blue: 0.8980392217636108, alpha: 1)), lineWidth: 2))
                                .padding(.bottom, 20)
                                .offset(y: 10)
                            Chart(data: [0.665, 0.63, 0.53, 0.58, 0.53, 0.59, 0.74, 0.69, 0.89, 0.74, 0.87, 0.66, 0.94, 0.88, 0.63, 0.8, 0.82, 0.98, 0.97])
                                .chartStyle(
                                    AreaChartStyle(.quadCurve, fill:
                                                    LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 0.3333333432674408, green: 0.32156863808631897, blue: 0.8901960849761963, alpha: 1)).opacity(0.8), Color(#colorLiteral(red: 0.3333333432674408, green: 0.32156863808631897, blue: 0.8901960849761963, alpha: 1)).opacity(0.05)]), startPoint: .top, endPoint: .bottom)
                                    )
                                )
                                .padding(.bottom, 20)
                                .offset(y: 10)
                        }
                        Chart(data: ChartData)
                            .chartStyle(LineChartStyle(.line, lineColor: Color(#colorLiteral(red: 0.95686274766922, green: 0.47843137383461, blue: 0.05098039284348488, alpha: 1)), lineWidth: 2))
                            .padding(.bottom, 20)
                    }

                    Spacer()
                    HStack {
                        Spacer()
                        Text(Value)
                            .foregroundColor(Active ? Color.white : Color.black )
                            .font(.system(size: 16, weight: .light, design: .monospaced))
                            .padding(.bottom, 24)
                        Spacer()
                    }
                }
            )
            
            .padding(8)
    }
}
