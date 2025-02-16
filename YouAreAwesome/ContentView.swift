//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Oleh on 07.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    @State private var imageName = ""
    
    var body: some View {
        
//        ZStack {
////            Color.yellow.opacity(0.5)
//            Rectangle()
////                .fill(.yellow.gradient)
//                .fill(Gradient(colors: [.orange, .yellow]))
//                .ignoresSafeArea()
//            
//            GeometryReader {geometry in
                VStack {
//                    Text("You have skills")
//                        .font(.largeTitle)
//                        .fontWeight(.black)
//                        .foregroundStyle(.white)
//                        .padding()
//                        .background(Color("SkyBlue"))
//                        .cornerRadius(15)
                    Spacer()
//                    
//                    Image(systemName: "cloud.sun.rain.fill")
//                        .resizable()
//                        .scaledToFit()
////                        .scaledToFill()
////                        .foregroundColor(.pink)
////                        .symbolRenderingMode(.hierarchical)
////                        .foregroundColor(.orange)
////                        .symbolRenderingMode(.palette)
////                        .foregroundStyle(.black, .blue)
//                        .symbolRenderingMode(.multicolor)
//                        .background(.gray)
////                        .cornerRadius(30)
//                        .clipShape(Circle())
//                        .shadow(radius: 30, x: 20, y: 20)
//                        .overlay(
//                            Circle()
//                                .stroke(.red, lineWidth: 5)
//                        )
//                        )
//                        )
//                    
                    Text(messageString)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.red)
                        .padding()
        //                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                    
                    Spacer()
                    
//                    Divider()
//                        .background(.black)
//                        .padding()
//                        .frame(width: 150.0)
//                    
//                    Rectangle()
//                        .fill(.indigo)
//                        .frame(width: geometry.size.width * (2/3), height: 4)
//
                    HStack(content: {
                        Button("Press Me") {
                            messageString = "You Are Awesome"
                        }
                        .buttonStyle(.borderedProminent)
                        
                    Spacer()
                        
                        Button("Great") {
                            messageString = "You Are Great"
                        }
                        .buttonStyle(.borderedProminent)
                    })
        //            .border(.purple, width: 5)
                    .padding()
                    
                }
                .padding()
            }
        }
        
//    }
//}

#Preview {
    ContentView()
}
