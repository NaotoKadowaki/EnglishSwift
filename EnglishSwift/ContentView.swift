//
//  ContentView.swift
//  EnglishSwift
//
//  Created by NAOTO KADOWAKI on 2020/09/17.
//

import SwiftUI


struct Word: Hashable {
    let japanese:String
    let english:String
    let pronunciation:String
}

struct ContentView: View {
//    let Basic1 = ["little","think","very","hate","we","live","near","he","we","ride","subway","hear","she","walk","every","morning","work","insurance","French","her","libray","when","where","why","how","whose","whom","which","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday","month","January","February","March","April","May","June","July","August","September","October","November","December","alive"]
    let words = [
        Word(japanese: "小さい", english: "little", pronunciation:"ˈlidl"),
        Word(japanese:"考え", english:"think",pronunciation:"THiNGk")
    ]
    
   
    @State private var searchText = ""
//    let Basic2:[String] = ["Do","enjoy","does","rubber","come","from","mean","often","travel","on","much","cost","play","parent","both","mean","abroad","join","during","vacation","year","old","really","sleepy","now","weather","rainy","married","have","attendance","optional","it","warm","sunny","alone","single","required","we","they","this","that","should","many","dark","large","next","famous","recommendation","glad","young"]
//    let Basic3:[String] =
//        ["hungry","mach","rich","slow","small","kind","lend","borrow","rent","sure","really","perhaps","move","find","come","almost","nothig","more","say","soon","perfect","tired","now","for","mind","will","would","world","right","actually","again","already","alright","allright","also","always","and","angry","another","anything","are","are","at","bad","badly","because","beginner","beside","best","best","better","bird"]

//    let Ee = "Basic1" + "Basic2" + "Basic3"

  
//    var word:String
    
    var body: some View {
        
        NavigationView {
            
            List {
                TextField("Type your search",text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.default)
                                       
                ForEach(words.filter{$0.english.hasPrefix(searchText) || searchText == ""},
                        id:\.self){word in
                   
                    NavigationLink(destination: SecondView(word:word)) {
                        Text(word.english)
                        //9.23.13時要素がSecondViewに反映されない。
                    }
                   
                }
               
            }
            
            .navigationBarTitle(Text("Search"))
        }
        //            HStack {
        //
        //                List(0 ..< Ee.count) { item in
        //                    NavigationLink(destination: SubView()) {
        //                        Text(String(item))
        //                        Text(Ee[item])
        //                    }
        //                }
    }
}


//struct SubView: View {
//    var body:some View {
//        Text("Sub")
//    }
//}



//struct SubView: View {
//    var body: some View {
//        Text("dodo")
//    }
//}
//struct SubView1: View {
//    var body: some View {
//        Text("dssoso")
//    }
//}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      
            ContentView()
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}
