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
    let core:String
    //後に追加、中国語集、　let chinese:String
    //発音記号の意味と読み方集できればガクトの動画のアドバイス付きで
}

struct ContentView: View {
    
    let words = [
        Word(japanese: "小さい", english: "little", pronunciation:"líṭl(米国英語)", core:"小さい，少量\n(感情的な評価を伴う傾向がある)"),
        Word(japanese:"考え", english:"think",pronunciation:"θíŋk(米国英語)", core:"" ),
        Word(japanese:"非常に、大いに", english:"very",pronunciation:"véri(米国英語", core:"非常に，まさにその(意味に段階性のある形容詞や副詞を強めてその程度が高いことを示し，「非常に」「極めて」という意味を表す．また，名詞を強調して，「まさにその」「まったくの」という意味を表す)"),
        Word(japanese:"嫌う、（〜を憎む）", english:"hate",pronunciation:"héɪt(米国英語)", core:""),
        Word(japanese:"私たち", english:"we",pronunciation:"(弱形) wi; (強形) wíː(米国英語)", core:""),
        Word(japanese:"住む", english:"live",pronunciation:"lάɪv(米国英語)", core:""),
        Word(japanese:"近く、すぐ近く",english:"near",pronunciation:"níɚ(米国英語",core:"…から離れていないところに(「…の近くに」という意だが，nearは常にfar (from)（遠くに）との関係で相対的に把握される)"),
        Word(japanese:"彼は", english:"he",pronunciation:"(弱形) (h)i; (強形) híː(米国英語", core:""),
        Word(japanese:"乗る、乗馬する", english:"ride",pronunciation:"rάɪd(米国英語)", core:""),  Word(japanese:"地下鉄、地下道", english:"subway",pronunciation:"sˈʌbwèɪ(米国英語)", core:""),
        Word(japanese:"〜が聞こえる", english:"hear",pronunciation:"híɚ(米国英語", core:"聞く(聴覚器官が機能して）聞こえる⇒listen"),
        Word(japanese:"彼女は", english:"she",pronunciation:"(弱形) ʃi; (強形) ʃíː(米国英語", core:""),
        Word(japanese:"歩く", english:"walk",pronunciation:"wˈɔːk(米国英語)", core:""),  Word(japanese:"毎、事に、万事、全ての", english:"every",pronunciation:"évri(米国英語)", core:"どの…もみな，あらゆる\n(3つ以上のものについて，全体をイメージしてから個々のものを同じようにとらえる)"),
        Word(japanese:"朝,午前", english:"morning",pronunciation:"mˈɔɚnɪŋ(米国英語)", core:""),  Word(japanese:"仕事", english:"work",pronunciation:"wˈɚːk(米国英語)", core:"自ら）動いて機能［力］を発揮する"),
        Word(japanese:"保険、保険業", english:"insurance",pronunciation:"ɪnʃˈʊ(ə)rəns(米国英語)", core:""),  Word(japanese:"フランス（風、人、語）の", english:"French",pronunciation:"fréntʃ(米国英語)", core:""),
        Word(japanese:"彼女（を、に、の）", english:"her",pronunciation:"(弱形) (h)ɚ(米国英語)", core:""),  Word(japanese:"図書館、図書室", english:"library",pronunciation:"lάɪbreri(米国英語)", core:""),
        Word(japanese:"いつ、どんな時に", english:"when",pronunciation:"(h)wén(米国英語)", core:"いつ\n（物事が起こる時点，時期あるいは場面を導入する）"),  Word(japanese:"どこで", english:"where",pronunciation:"(h)wéɚ(米国英語)", core:"どこで\n（疑問副詞として、場所、状況（の段階、側面）が不明である場合にそれを問う。また、関係副詞として、場所、状況（の段階、側面）を説明する文を導入する）"),
        Word(japanese:"なぜ", english:"why",pronunciation:"(h)wάɪ(米国英語)", core:"「なぜ…なのか」を問う\n（疑問副詞として用いるのが基本だが，関係副詞としての働きもある）"),  Word(japanese:"どのように", english:"how",pronunciation:"", core:""),
        Word(japanese:"誰が", english:"who",pronunciation:"húː(米国英語)", core:"だれ\n（疑問代名詞として，状況，出来事などの参加者が不明である場合にそれを問う．また，関係代名詞として，人について，それを限定したり，説明したりする節を導入する）"),  Word(japanese:"誰の", english:"whose",pronunciation:"húːz(米国英語)", core:""),
        Word(japanese:"誰を、疑問代名詞whoの目的格", english:"whom",pronunciation:"húːm(米国英語)", core:""),  Word(japanese:"どちらの,どれ", english:"which",pronunciation:"(h)wítʃ(米国英語", core:"どれ\n（疑問詞として限定された数の対象について「どれ」「どの」と尋ねたり，関係詞としてある対象についてあとから情報を提供する際にその導入の役割を果たしたりする）"),
        Word(japanese:"月曜日", english:"Monday",pronunciation:"mˈʌndèɪ(米国英語)", core:""),  Word(japanese:"火曜日", english:"Tuesday",pronunciation:"t(j)úːzdèɪ(米国英語)", core:""),
        Word(japanese:"水曜日", english:"Wednesday",pronunciation:"wénzdèɪ(米国英語)", core:""),  Word(japanese:"木曜日", english:"Thursday",pronunciation:"θˈɚːzdèɪ(米国英語", core:""),
        Word(japanese:"金曜日", english:"Friday",pronunciation:"frάɪdèɪ(米国英語),", core:""),  Word(japanese:"土曜日", english:"Saturday",pronunciation:"sˈæṭɚdèɪ(米国英語)", core:""),
        Word(japanese:"日曜日", english:"Sunday",pronunciation:"sˈæṭɚdèɪ(米国英語)", core:""),  Word(japanese:"月", english:"month",pronunciation:"mˈʌnθ", core:""),
        Word(japanese:"1月", english:"January",pronunciation:"dʒˈænjuèri(米国英語)", core:""),  Word(japanese:"2月", english:"February",pronunciation:"fébruèri(米国英語)", core:""),
        Word(japanese:"3月", english:"March",pronunciation:"mάɚtʃ(米国英語)", core:""),  Word(japanese:"4月", english:"April",pronunciation:"éɪprəl(米国英語)", core:""),
        Word(japanese:"5月", english:"May",pronunciation:"méɪ(米国英語)", core:""),  Word(japanese:"6月", english:"June",pronunciation:"dʒúːn(米国英語)", core:""),
        Word(japanese:"7月", english:"July",pronunciation:"dʒʊlάɪ(米国英語)", core:""),  Word(japanese:"8月", english:"August",pronunciation:"ˈɔːgəst",core:""),
        Word(japanese:"9月", english:"September",pronunciation:"septémbɚ(米国英語)", core:""),  Word(japanese:"10月", english:"October",pronunciation:"ɑktóʊbɚ(米国英語)", core:""),
        Word(japanese:"11月", english:"November",pronunciation:"noʊvémbɚ(米国英語)", core:""),  Word(japanese:"12月", english:"December",pronunciation:"dɪsémbɚ(米国英語", core:""),
        Word(japanese:"生きて、生存して", english:"alive",pronunciation:"əlάɪv(米国英語)", core:""),  Word(japanese:"する、行う", english:"do",pronunciation:"díṭoʊ", core:""),
        Word(japanese:"楽しむ", english:"enjoy",pronunciation:"ɪndʒˈɔɪ", core:"何かから楽しみ［有益なもの］を得る"),  Word(japanese:"do３人単数現在形", english:"does",pronunciation:"dˈʌz", core:""),
        Word(japanese:"タイヤ、ゴム、コンドーム", english:"rubber",pronunciation:"rˈʌbɚ", core:""),  Word(japanese:"くる、やってくる", english:"come",pronunciation:"kˈʌm", core:"視点のあるところに移動する(通常は話し手の所へ「来る」こと．心理的視点が相手の所にある時は相手の所へ「行く」)"),
        Word(japanese:"〜から", english:"from",pronunciation:"(弱形)frəm; (強形)frάm", core:"（物事の起点を示して）…から"),  Word(japanese:"意味する、示す", english:"mean",pronunciation:"míːn", core:"意味する「（記号が）…を意味する」だけでなく「（事柄が）…を意味する」「（人が）…を意味する」という状況で使える"),
        Word(japanese:"しばしば、たびたび、よく", english:"often",pronunciation:"ˈɔːf(ə)n", core:""),  Word(japanese:"長期旅行", english:"travel",pronunciation:"trˈæv(ə)l", core:""),
        Word(japanese:"〜の面して、上に", english:"on",pronunciation:"ɔːn", core:"…に接触して（水平・垂直方向を問わず「接触関係」を表す）"),  Word(japanese:"たくさんの、多量の", english:"much",pronunciation:"", core:""),
        Word(japanese:"遊ぶ", english:"play",pronunciation:"", core:""),  Word(japanese:"親", english:"parent",pronunciation:"", core:""),
        Word(japanese:"両方の、両者の", english:"both",pronunciation:"", core:""),  Word(japanese:"国外へ、海外へ（広まって）", english:"abroad",pronunciation:"", core:""),
        Word(japanese:"結合する、仲間になる、繋げる", english:"join",pronunciation:"", core:""),  Word(japanese:"間に、間中に", english:"during",pronunciation:"", core:""),
        Word(japanese:"休暇、休止、バカンス（仕事）", english:"vacation",pronunciation:"", core:""),  Word(japanese:"年", english:"year",pronunciation:"", core:""),
        Word(japanese:"年取ったt、老人", english:"old",pronunciation:"", core:""),  Word(japanese:"本当？、実際に", english:"really",pronunciation:"", core:""),
        Word(japanese:"眠そうな", english:"sleepy",pronunciation:"", core:""),  Word(japanese:"今、現在、すぐ、直ちに", english:"now",pronunciation:"", core:""),
        Word(japanese:"天気、気候", english:"weather",pronunciation:"", core:""),  Word(japanese:"雨模様の、雨の多い", english:"rainy",pronunciation:"", core:""),
        Word(japanese:"結婚している、妻のある", english:"married",pronunciation:"", core:""),  Word(japanese:"持っている、食べる", english:"have",pronunciation:"", core:""),
        Word(japanese:"出席、出勤、参列、出席者", english:"attendance",pronunciation:"", core:""),  Word(japanese:"オプション、洗濯が自由の", english:"optional",pronunciation:"", core:""),
        Word(japanese:"それ、それに、それを", english:"it",pronunciation:"", core:""),  Word(japanese:"暖かな", english:"warm",pronunciation:"", core:""),
        Word(japanese:"晴れ渡った", english:"sunny",pronunciation:"", core:""),  Word(japanese:"1人で、孤立して", english:"alone",pronunciation:"", core:""),
        Word(japanese:"シングル、独身の", english:"single",pronunciation:"", core:""),  Word(japanese:"必須の、所要の", english:"required",pronunciation:"", core:""),
        Word(japanese:"彼、彼女、それ（らは）", english:"they",pronunciation:"", core:""),  Word(japanese:"これは、この", english:"this",pronunciation:"", core:""),
        Word(japanese:"あれは、それは", english:"that",pronunciation:"", core:""),  Word(japanese:"〜すべき", english:"should",pronunciation:"", core:""),
        Word(japanese:"たくさんの、多くの", english:"many",pronunciation:"", core:""),  Word(japanese:"暗い", english:"dark",pronunciation:"", core:""),
        Word(japanese:"大きい、広い", english:"large",pronunciation:"", core:""),  Word(japanese:"次の", english:"next",pronunciation:"", core:""),
        Word(japanese:"有名な、名高い", english:"famous",pronunciation:"", core:""),  Word(japanese:"おすすめ、推薦", english:"recommendation",pronunciation:"", core:""),
        Word(japanese:"嬉しい", english:"glad",pronunciation:"", core:""),  Word(japanese:"若い", english:"young",pronunciation:"", core:""),
        Word(japanese:"腹へった", english:"hungry",pronunciation:"", core:""),  Word(japanese:"多量の、たくさんの", english:"much",pronunciation:"", core:"数えられないものについて、その量が「多くの」という意味を表す"),
        Word(japanese:"数学", english:"mach",pronunciation:"", core:""),  Word(japanese:"金持ち", english:"rich",pronunciation:"", core:""),
        Word(japanese:"遅い", english:"slow",pronunciation:"", core:""),  Word(japanese:"小さい", english:"small",pronunciation:"", core:""),
        Word(japanese:"親切", english:"kind",pronunciation:"", core:""),  Word(japanese:"貸す（無料）", english:"lend",pronunciation:"", core:""),
        Word(japanese:"借りる（無料）", english:"borrow",pronunciation:"", core:""),  Word(japanese:"貸す、借りる（有料）", english:"rent",pronunciation:"", core:""),
        Word(japanese:"もちろん", english:"sure",pronunciation:"", core:""),  Word(japanese:"本当？", english:"really",pronunciation:"", core:""),
        Word(japanese:"多分ね", english:"perhaps",pronunciation:"", core:""),  Word(japanese:"動く、引っ越す、感動する", english:"move",pronunciation:"", core:""),
        Word(japanese:"見つけた", english:"find",pronunciation:"", core:""),  Word(japanese:"来る、やって来る", english:"come",pronunciation:"", core:""),
        Word(japanese:"ほとんど、もう少しで", english:"almost",pronunciation:"「", core:"何かに到達する一歩手前」という意味合いがある"),  Word(japanese:"何もない", english:"nothing",pronunciation:"", core:"想定された状況に当てはまる対象が何もないことを表す"),
        Word(japanese:"もっと多くの", english:"more",pronunciation:"", core:"「現状よりさらに多くの」の意を表す"),  Word(japanese:"言う", english:"say",pronunciation:"", core:""),
        Word(japanese:"まもなく、すぐ", english:"soon",pronunciation:"", core:""),  Word(japanese:"完璧、理想的な", english:"perfect",pronunciation:"", core:""),
        Word(japanese:"疲れた、しんどい", english:"tired",pronunciation:"", core:""),  Word(japanese:"今、現在、すぐ、直ちに", english:"now",pronunciation:"", core:""),
        Word(japanese:"〜の為に", english:"for",pronunciation:"", core:""),  Word(japanese:"心、精神", english:"mind",pronunciation:"", core:""),
        Word(japanese:"〜するだろう、するつもり", english:"will",pronunciation:"", core:"あることに対して意志がある、ということを示す"),  Word(japanese:"〜するつもりがあった", english:"would",pronunciation:"", core:"（willの過去形）あることに向かう意志が「あった」ということを示す"),
        Word(japanese:"世界", english:"world",pronunciation:"", core:""),  Word(japanese:"正しい、正当な、右", english:"right",pronunciation:"", core:""),
        Word(japanese:"実際に", english:"actually",pronunciation:"", core:""),  Word(japanese:"また", english:"again",pronunciation:"", core:""),
        Word(japanese:"既に", english:"already",pronunciation:"", core:""),  Word(japanese:"大丈夫", english:"alright",pronunciation:"", core:""),
        Word(japanese:"また", english:"also",pronunciation:"", core:""),  Word(japanese:"いつも、常に", english:"always",pronunciation:"", core:""),
        Word(japanese:"そして", english:"and",pronunciation:"", core:""),  Word(japanese:"怒る", english:"angry",pronunciation:"", core:""),
        Word(japanese:"別の、他の", english:"another",pronunciation:"", core:"「はじめにさしたもの（one）とは、(同じ種類)別のものをさす時に用いる」"),  Word(japanese:"何か", english:"anything",pronunciation:"", core:""),
        Word(japanese:"〜は（複数）", english:"are",pronunciation:"", core:""),  Word(japanese:"〜で", english:"at",pronunciation:"", core:"〜のところに「空間(in)」や「面(on)」を問題にせず、単に「場(ところ)」を表す場合にatを使用する"),
        Word(japanese:"悪い", english:"bad",pronunciation:"", core:""),  Word(japanese:"ひどく、非常に", english:"badly",pronunciation:"", core:""),
        Word(japanese:"なぜなら〜なので", english:"because",pronunciation:"", core:""),  Word(japanese:"初心者", english:"beginner",pronunciation:"", core:""),
        Word(japanese:"そばに", english:"beside",pronunciation:"", core:""),  Word(japanese:"最善", english:"best",pronunciation:"", core:""),
        Word(japanese:"よりよい", english:"better",pronunciation:"", core:""),  Word(japanese:"鳥", english:"bird",pronunciation:"", core:""),
        
    ]
    
    
    
    @State private var searchText = ""
    //    let Basic1 = ["little","think","very","hate","we","live","near","he","we","ride","subway","hear","she","walk","every","morning","work","insurance","French","her","libray","when","where","why","how","who","whose","whom","which","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday","month","January","February","March","April","May","June","July","August","September","October","November","December","alive"]
    //    let Basic2:[String] = ["Do","enjoy","does","rubber","come","from","mean","often","travel","on","much","cost","play","parent","both","abroad","join","during","vacation","year","old","really","sleepy","now","weather","rainy","married","have","attendance","optional","it","warm","sunny","alone","single","required","they","this","that","should","many","dark","large","next","famous","recommendation","glad","young"]
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
