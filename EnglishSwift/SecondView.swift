//
//  SecondView.swift
//  EnglishSwift
//
//  Created by NAOTO KADOWAKI on 2020/09/23.
//

import SwiftUI

struct SecondView: View {
    var word:Word
    
    var body: some View {
        VStack{
            Text(word.english)
                .font(.title)
            Text(word.japanese)
            Text(word.pronunciation)
                .font(.title3)
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
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(word:Word(japanese: "はな", english: "hana", pronunciation: "発音"))
    }
}
