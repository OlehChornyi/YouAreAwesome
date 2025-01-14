//
//  ContentViewThree.swift
//  YouAreAwesome
//
//  Created by Oleh on 14.01.2025.
//

import SwiftUI
import AVFAudio

struct ContentViewThree: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack{
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                
                let messages = ["You are awesome!",
                                "You are great!",
                                "You are fantastic!",]
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                
                var imageNumber = Int.random(in: 0...1)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...1)
                }
                imageName = "Image\(imageNumber)"
                lastImageNumber = imageNumber
                
                var soundNumber: Int
                repeat {
                    soundNumber = Int.random(in: 0...5)
                } while soundNumber == lastSoundNumber 
                lastSoundNumber = soundNumber
                let soundName = "sound\(soundNumber)"
                
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("🤬 Could not read file named \(soundName)")
                    return
                }
                
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("🤬 ERROR: \(error.localizedDescription)")
                }
                
                
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}



#Preview {
    ContentViewThree()
}

