//
//  OverviewView.swift
//  z-bank
//
//  Created by Phillip Lakis on 8/3/21.
//

import SwiftUI

struct OverviewView: View {


    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.007843137719, green: 0.01176470611, blue: 0.09019608051, alpha: 1))
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Personal Funds:")
                    .font(.system(size: 16, weight: .light, design: .rounded))
                    .padding(.vertical, 4)

                Text("$14,000")
                    .font(.system(size: 40, weight: .black))

                Text("Credit limit:  $10,000")
                    .font(.system(size: 14, weight: .medium, design: .rounded))
                    .padding(12)
                    .padding(.horizontal, 4)
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(16)

                Divider()
                    .foregroundColor(.blue)
                    .frame(width: screen.width)
                
                Spacer()
            }
            .padding(36)
            .padding(.leading, 36)
            .foregroundColor(.white)

            
            CardViews()
                .offset(y: 30)
            
            VStack {
                Spacer()
                
                HStack {
                    Image(systemName: "rhombus.fill")
                        .font(.system(size: 16, weight:.black))
                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)).opacity(0.5))
                    Image(systemName: "rhombus.fill")
                        .font(.system(size: 24, weight:.black))
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "rhombus.fill")
                        .font(.system(size: 16, weight:.black))
                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)).opacity(0.5))
                }
                
                HStack {
                    Button(action: { } ) {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.9490196108818054, blue: 0.8705882430076599, alpha: 1)))
                            .frame(width: 60, height: 60, alignment: .center)
                            .cornerRadius(16)
                            .padding()
                            .overlay(
                                Image(systemName: "arrow.up.forward")
                                    .font(.system(size: 24, weight:.medium))
                                    .foregroundColor(Color(#colorLiteral(red: 0.007843137718737125, green: 0.0117647061124444, blue: 0.09019608050584793, alpha: 1)))
                            )
                    }
                    
                   
                    Button(action: { } ) {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.6549019813537598, green: 0.8784313797950745, blue: 0.9921568632125854, alpha: 1)))
                            .frame(width: 60, height: 60, alignment: .center)
                            .cornerRadius(16)
                            .padding()
                            .overlay(
                                Image(systemName: "arrow.down.left")
                                    .font(.system(size: 24, weight:.medium))
                                    .foregroundColor(Color(#colorLiteral(red: 0.007843137718737125, green: 0.0117647061124444, blue: 0.09019608050584793, alpha: 1)))
                            )
                    }
                    
                    Button(action: { } ) {
                        Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.772549033164978, green: 0.7843137383460999, blue: 0.9921568632125854, alpha: 1)))
                            .frame(width: 60, height: 60, alignment: .center)
                            .cornerRadius(16)
                            .padding()
                            .overlay(
                                Image(systemName: "plus")
                                    .font(.system(size: 24, weight:.medium))
                                    .foregroundColor(Color(#colorLiteral(red: 0.007843137718737125, green: 0.0117647061124444, blue: 0.09019608050584793, alpha: 1)))
                            )
                    }
                }


                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: screen.width, height: screen.height / 2 - 24)
                    .clipShape(CustomCorner(corner: [.topLeft, .topRight], size: 50))
                    .overlay(
                        VStack {
                            HStack {
                                Button(action: { } ) {
                                    Image(systemName: "chart.pie")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                }
                                Spacer()
                                Text("Today")
                                    .font(.system(size: 20, weight: .bold))
                                Spacer()
                                Button(action: { } ) {
                                    Image(systemName: "magnifyingglass")
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                }
                            }
                            .padding([.top, .bottom], 20)
                            
                            
                            HStack {
                                
                                Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.9490196108818054, green: 0.9529411792755127, blue: 0.9725490212440491, alpha: 1)))
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .cornerRadius(16)
                                    .overlay(
                                        Image(systemName: "car")
                                            .font(.system(size: 22, weight:.bold))
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text("Uber")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .padding(.bottom, 1)

                                    Text("Taxi")
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                        .font(.system(size: 14, weight: .medium, design: .rounded))

                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$5.00")
                                        .font(.system(size: 18, weight: .black, design: .rounded))
                                        .padding(.bottom, 1)

                                    Text("11:30 PM")
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                        .font(.system(size: 14, weight: .medium, design: .rounded))
                                }
                            }
                            .padding(.bottom)
                            
                            HStack {
                                
                                Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.9490196108818054, green: 0.9529411792755127, blue: 0.9725490212440491, alpha: 1)))
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .cornerRadius(16)
                                    .overlay(
                                        Image(systemName: "cart")
                                            .font(.system(size: 22, weight:.bold))
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text("MD Fasion")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .padding(.bottom, 1)

                                    Text("Shopping")
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                        .font(.system(size: 14, weight: .medium, design: .rounded))
                                    
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$240.00")
                                        .font(.system(size: 18, weight: .black, design: .rounded))
                                        .padding(.bottom, 1)

                                    Text("9:25 PM")
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                        .font(.system(size: 14, weight: .medium, design: .rounded))
                                }
                            }
                            .padding(.bottom)

                            HStack {
                                
                                Rectangle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.9490196108818054, green: 0.9529411792755127, blue: 0.9725490212440491, alpha: 1)))
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .cornerRadius(16)
                                    .overlay(
                                        Image(systemName: "applelogo")
                                            .font(.system(size: 22, weight:.bold))
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text("Apple")
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .padding(.bottom, 1)

                                    Text("Shopping")
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                        .font(.system(size: 14, weight: .medium, design: .rounded))
                                    
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$1015.00")
                                        .font(.system(size: 18, weight: .black, design: .rounded))
                                        .padding(.bottom, 1)

                                    Text("1:11 AM")
                                        .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                                        .font(.system(size: 14, weight: .medium, design: .rounded))
                                }
                            }
                            .padding(.bottom)

                            
                            HStack {
                                Image(systemName: "rectangle")
                                    .font(.system(size: 28, weight: .medium))
                                    .foregroundColor(Color(#colorLiteral(red: 0.007843137719, green: 0.01176470611, blue: 0.09019608051, alpha: 1)))
                                    .padding(.horizontal)
                                Image(systemName: "chart.pie")
                                    .font(.system(size: 28, weight: .medium))
                                    .padding(.horizontal)
                                Image(systemName: "gift")
                                    .font(.system(size: 28, weight: .medium))
                                    .padding(.horizontal)
                                Image(systemName: "square.grid.2x2")
                                    .font(.system(size: 28, weight: .medium))
                                    .padding(.horizontal)
                            }
                            .foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7529411911964417, blue: 0.8156862854957581, alpha: 1)))
                            
                            Spacer()
                        }
                        .padding([.trailing, .leading], 30)
                    
                    )
            }
            .ignoresSafeArea()
            
         
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}


let screen = UIScreen.main.bounds

struct CustomCorner: Shape {
    
    var corner: UIRectCorner
    var size: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let cornerPath = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: size, height: size))
        return Path(cornerPath.cgPath)
    }
}

struct BlurView: UIViewRepresentable {
    typealias UIViewType = UIView
    var style: UIBlurEffect.Style
    
    func updateUIView(_ uiView: UIView, context: Context) {
        return
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
}

struct CardViews: View {
    @Namespace var namespace
    @State var showCard1: Bool = false
    @State var showCard2: Bool = false
    @State var showCard3: Bool = false
    
    var body: some View {
        ZStack {
            if !showCard1 {
                VStack {
                    Rectangle()
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(
                            Color.white.opacity(0.0001)
                        )
                        .cornerRadius(16)
                        .overlay(
                            ZStack {
                                Color.white.opacity(0.0001)
                                    .background(
                                        BlurView(style: .systemUltraThinMaterialLight)
                                            .cornerRadius(16)
                                    )
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8588235378265381, green: 0.7686274647712708, blue: 0.9882352948188782, alpha: 1)), Color(#colorLiteral(red: 0.572549045085907, green: 0.772549033164978, blue: 0.9882352948188782, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                                
                                VStack(alignment: .leading) {
                                    Text("Everyday")
                                        .font(.system(size: 18, weight: .black))
                                        .padding()
                                        .matchedGeometryEffect(id: "cardName", in: namespace)
                                    Divider()
                                    Spacer()
                                }
                            }
                            .matchedGeometryEffect(id: "card", in: namespace)
                            .foregroundColor(.white)
                        )
                    Spacer()
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                        self.showCard1.toggle()
                    }
                }
                .offset(x: 220)
                .offset(x: showCard2 || showCard3 ? 200 : 0)
            } else {
                VStack {
                    Rectangle()
                        .frame(width: 300, height: 180, alignment: .leading)
                        .foregroundColor(
                            Color.white.opacity(0.0001)
                        )
                        .cornerRadius(16)
                        .overlay(
                            ZStack {
                                Color.white.opacity(0.0001)
                                    .background(
                                        BlurView(style: .systemUltraThinMaterialLight)
                                            .cornerRadius(16)
                                    )
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8588235378265381, green: 0.7686274647712708, blue: 0.9882352948188782, alpha: 1)), Color(#colorLiteral(red: 0.572549045085907, green: 0.772549033164978, blue: 0.9882352948188782, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                                
                                VStack(alignment: .leading) {
                                    Text("Everyday")
                                        .font(.system(size: 18, weight: .black))
                                        .padding()
                                        .matchedGeometryEffect(id: "cardName", in: namespace)
                                    
                                    Spacer()
                                    Group {
                                        Text("Balance:")
                                            .font(.system(size: 14, weight: .medium))
                                        Text("$1,332.92")
                                            .font(.system(size: 18, weight: .black))
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    Text("3617 5687 7684 076")
                                        .font(.system(size: 18, weight: .light))
                                        .padding()
                                        .frame(width: 300)
                                    
                                }
                                
                            }
                            .matchedGeometryEffect(id: "card", in: namespace)
                            .foregroundColor(.white)
                        )
                    Spacer()
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                        self.showCard1.toggle()
                    }
                }
            }
            
            if !showCard2 {
                VStack {
                    Rectangle()
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(
                            Color.white.opacity(0.0001)
                        )
                        .cornerRadius(16)
                        .overlay(
                            ZStack {
                                Color.white.opacity(0.0001)
                                    .background(
                                        BlurView(style: .systemUltraThinMaterialLight)
                                            .cornerRadius(16)
                                    )
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8588235378265381, green: 0.7686274647712708, blue: 0.9882352948188782, alpha: 1)), Color(#colorLiteral(red: 0.572549045085907, green: 0.772549033164978, blue: 0.9882352948188782, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                                
                                VStack(alignment: .leading) {
                                    Text("Savings")
                                        .font(.system(size: 18, weight: .black))
                                        .padding()
                                        .matchedGeometryEffect(id: "cardNameTwo", in: namespace)
                                    Divider()
                                    Spacer()
                                }
                            }
                            .matchedGeometryEffect(id: "cardTwo", in: namespace)
                            .foregroundColor(.white)
                        )
                    Spacer()
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                        self.showCard2.toggle()
                    }
                }
                .offset(x: 220, y: 50)
                .offset(x: showCard1 || showCard3 ? 200 : 0)
            } else {
                VStack {
                    Rectangle()
                        .frame(width: 300, height: 180, alignment: .leading)
                        .foregroundColor(
                            Color.white.opacity(0.0001)
                        )
                        .cornerRadius(16)
                        .overlay(
                            ZStack {
                                Color.white.opacity(0.0001)
                                    .background(
                                        BlurView(style: .systemUltraThinMaterialLight)
                                            .cornerRadius(16)
                                    )
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8588235378265381, green: 0.7686274647712708, blue: 0.9882352948188782, alpha: 1)), Color(#colorLiteral(red: 0.572549045085907, green: 0.772549033164978, blue: 0.9882352948188782, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                                
                                VStack(alignment: .leading) {
                                    Text("Savings")
                                        .font(.system(size: 18, weight: .black))
                                        .padding()
                                        .matchedGeometryEffect(id: "cardNameTwo", in: namespace)
                                    
                                    Spacer()
                                    Group {
                                        Text("Balance:")
                                            .font(.system(size: 14, weight: .medium))
                                        Text("$6,462.92")
                                            .font(.system(size: 18, weight: .black))
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    Text("3617 5687 7684 076")
                                        .font(.system(size: 18, weight: .light))
                                        .padding()
                                        .frame(width: 300)
                                    
                                }
                                
                            }
                            .matchedGeometryEffect(id: "cardTwo", in: namespace)
                            .foregroundColor(.white)
                        )
                    Spacer()
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                        self.showCard2.toggle()
                    }
                }
            }
            
            if !showCard3 {
                VStack {
                    Rectangle()
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(
                            Color.white.opacity(0.0001)
                        )
                        .cornerRadius(16)
                        .overlay(
                            ZStack {
                                Color.white.opacity(0.0001)
                                    .background(
                                        BlurView(style: .systemUltraThinMaterialLight)
                                            .cornerRadius(16)
                                    )
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8588235378265381, green: 0.7686274647712708, blue: 0.9882352948188782, alpha: 1)), Color(#colorLiteral(red: 0.572549045085907, green: 0.772549033164978, blue: 0.9882352948188782, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                                
                                VStack(alignment: .leading) {
                                    Text("Credit")
                                        .font(.system(size: 18, weight: .black))
                                        .padding()
                                        .matchedGeometryEffect(id: "cardNameThree", in: namespace)
                                    Divider()
                                    Spacer()
                                }
                            }
                            .matchedGeometryEffect(id: "cardThree", in: namespace)
                            .foregroundColor(.white)
                        )
                    Spacer()
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                        self.showCard3.toggle()
                    }
                }
                .offset(x: 220, y:100)
                .offset(x: showCard1 || showCard2 ? 200 : 0)
            } else {
                VStack {
                    Rectangle()
                        .frame(width: 300, height: 180, alignment: .leading)
                        .foregroundColor(
                            Color.white.opacity(0.0001)
                        )
                        .cornerRadius(16)
                        .overlay(
                            ZStack {
                                Color.white.opacity(0.0001)
                                    .background(
                                        BlurView(style: .systemUltraThinMaterialLight)
                                            .cornerRadius(16)
                                    )
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8588235378265381, green: 0.7686274647712708, blue: 0.9882352948188782, alpha: 1)), Color(#colorLiteral(red: 0.572549045085907, green: 0.772549033164978, blue: 0.9882352948188782, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                                
                                VStack(alignment: .leading) {
                                    Text("Credit")
                                        .font(.system(size: 18, weight: .black))
                                        .padding()
                                        .matchedGeometryEffect(id: "cardNameThree", in: namespace)
                                    
                                    Spacer()
                                    Group {
                                        Text("Balance:")
                                            .font(.system(size: 14, weight: .medium))
                                        Text("$2,332.92")
                                            .font(.system(size: 18, weight: .black))
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    Text("3617 5687 7684 076")
                                        .font(.system(size: 18, weight: .light))
                                        .padding()
                                        .frame(width: 300)
                                    
                                }
                                
                            }
                            .matchedGeometryEffect(id: "cardThree", in: namespace)
                            .foregroundColor(.white)
                        )
                    Spacer()
                }
                .onTapGesture {
                    withAnimation(.spring(response: 0.7, dampingFraction: 0.8)) {
                        self.showCard3.toggle()
                    }
                }
            }
        }
    }
}
