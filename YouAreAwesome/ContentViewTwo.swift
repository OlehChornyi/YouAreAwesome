//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Oleh on 07.01.2025.
//

import SwiftUI

struct ContentViewTwo: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        VStack{
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            

            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            
            Spacer()
            
            
            Button("Show Message") {
//                let message1 = "You are awesome!"
//                let message2 = "You are great!"
//                let message3 = "Fabulous! That's You!"
//  
//                if messageString == message1 {
//                    messageString = message2
//                } else if messageString == message2 {
//                    messageString = message2
//                } else {
//                    messageString = message1
//                }
                
//                messageString = (messageString == message1 ? message2 : message1)
                
                let messages = ["You are awesome!",
                                "You are great!",
                                "You are fantastic!",]
                messageString = messages[messageNumber]
                messageNumber += 1
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                //TODO: update the imageName variable
                imageName = "Image\(imageNumber)"
                imageNumber += 1
                if imageNumber > 1 {
                    imageNumber = 0
                }
                print(imageNumber)
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}



#Preview {
    ContentViewTwo()
}
