//
//  SecondView.swift
//  EnglishSwift
//
//  Created by NAOTO KADOWAKI on 2020/09/23.
//

import SwiftUI
import AVFoundation

struct SecondView: View {
    
    var word:Word
    
    //    @State var text = "Apple"
    
    var body: some View {
        VStack(spacing:20) {
            Text(word.english)
                .foregroundColor(Color.red)
                .font(.system(size:40))
            Text(word.japanese)
                .foregroundColor(Color.black)
            Text(word.core)
                .foregroundColor(Color.blue)
                .frame(alignment: .center)
            Text(word.pronunciation)
                .foregroundColor(Color.red)
                .font(.title3)
            Button(action: {
                let utterance = AVSpeechUtterance(string: self.word.english)
                let synthesizer = AVSpeechSynthesizer()
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                synthesizer.speak(utterance)
                utterance.rate = 0.4
                //                utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
                //                utterance.voice = AVSpeechSynthesisVoice(language: "zh-CN")China
            }) {
                Image(systemName:"speaker.3.fill")
                    .foregroundColor(Color.black)
            }
         
        }
      
        
    }
}

//            if word == "little" {
//                Text("小さい")
//            }else if word == "think" {
//                Text("考える")
//            }else {
//                Text("edit")
//            switch word {
//            case "little":
//                Text("小さい")
//            case "think":
//                Text("考える")
//            case "very":
//                Text("非常に")
//            default:
//                Text("While editin")
//
//                            }

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
