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
    
    @State var text = ""
    
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
                //                utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
                //                utterance.voice = AVSpeechSynthesisVoice(language: "zh-CN")中国
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                
                utterance.rate = 0.4
                
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
                
            }) {
                Image(systemName:"speaker.3.fill")
                    .foregroundColor(Color.black)
            }
        
//            TextArea(//textが打てるようになる
//                text: $text
//            ).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
//
            
        }
//        .font(.system(size:50))
        //
        //        VStack{
        //            Text(word.english)
        //                .font(.title)
        //            Text(word.japanese)
        //            Text(word.pronunciation)
        //                .font(.title3)
        //            Text(word.core)
        //                .frame(alignment: .center)
        
        //        }
        
    }
}
//以下の構造体、関数はTextから音声に変換するまでのコード
//struct TextArea: UIViewRepresentable {
//    @Binding var text: String
//
//    func makeUIView(context: Context) -> UITextView {
//
//        let myTextArea = UITextView()
//        myTextArea.delegate = context.coordinator
//        myTextArea.font = UIFont(name: "HelveticaNeue", size: 55)
//        myTextArea.backgroundColor = UIColor(displayP3Red: 0.8, green: 0.8, blue:1, alpha:0.2)
//
//        return myTextArea
//    }
//    func updateUIView(_ uiView: UITextView, context: Context) {
//        uiView.text = text
//    }
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    class Coordinator : NSObject,UITextViewDelegate {
//        var parent: TextArea
//
//        init(_ uiTextView: TextArea) {
//            self.parent = uiTextView
//        }
//        func textViewDidChange(_ textView: UITextView) {
//            self.parent.text = textView.text
//        }
//    }
//}


//
//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(word:Word(japanese: "意味", english: "スペル", pronunciation: "発音",core: "確信"))
//    }
//}
//
//
//struct TextArea: UIViewRepresentable {
//    @Binding var text: String
//
//    func makeUIView(context: Context) -> UITextView {
//
//        let myTextArea = UITextView()
//        myTextArea.delegate = context.coordinator
//        myTextArea.font = UIFont(name: "HelveticaNeue", size: 55)
//        myTextArea.backgroundColor = UIColor(displayP3Red: 0.8, green: 0.8, blue:1, alpha:0.2)
//
//        return myTextArea
//    }
//    func updateUIView(_ uiView: UITextView, context: Context) {
//        uiView.text = text
//    }
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    class Coordinator : NSObject,UITextViewDelegate {
//        var parent: TextArea
//
//        init(_ uiTextView: TextArea) {
//            self.parent = uiTextView
//        }
//        func textViewDidChange(_ textView: UITextView) {
//            self.parent.text = textView.text
//        }
//    }
//}

//
//  ContentView.swift
//  onsei
//
//  Created by NAOTO KADOWAKI on 2020/09/29.
//

//import SwiftUI
//import AVFoundation
//
//struct ContentView: View {
//
//    @State var text = "speech"
//
//    var body: some View {
//        VStack(spacing:50) {
//            Button(action: {
//                let utterance = AVSpeechUtterance(string: self.text)
//                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
//                utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
//
//                utterance.rate = 0.5
//
//                let synthesizer = AVSpeechSynthesizer()
//                synthesizer.speak(utterance)
//
//            }) {
//                Text("読み上げ開始")
//            }
//
//            TextArea(
//                text: $text
//            ).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity)
//        }
//        .font(.system(size:18))
//
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct TextArea: UIViewRepresentable {
//    @Binding var text: String
//
//    func makeUIView(context: Context) -> UITextView {
//
//        let myTextArea = UITextView()
//        myTextArea.delegate = context.coordinator
//        myTextArea.font = UIFont(name: "HelveticaNeue", size: 55)
//        myTextArea.backgroundColor = UIColor(displayP3Red: 0.8, green: 0.8, blue:1, alpha:0.2)
//
//        return myTextArea
//    }
//    func updateUIView(_ uiView: UITextView, context: Context) {
//        uiView.text = text
//    }
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    class Coordinator : NSObject,UITextViewDelegate {
//        var parent: TextArea
//
//        init(_ uiTextView: TextArea) {
//            self.parent = uiTextView
//        }
//        func textViewDidChange(_ textView: UITextView) {
//            self.parent.text = textView.text
//        }
//    }
//}


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
