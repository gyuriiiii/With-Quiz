//
//  ViewController.swift
//
//  Created by mac037 on 2022/04/19.
//

import UIKit

// 영단어 외우기
class EnglishWordViewController: UIViewController {

    var questions = [ // 문제
        "apple",
        "banana",
        "calendar",
        "access",
        "afternoon",
        "airplane",
        "alive",
        "all",
        "bake",
        "balance",
        "ball",
        "balloon",
        "ban",
        "band",
        "bang",
        "bank",
        "allocate",
        "allow",
        "ally",
        "almost",
        "alone",
        "bee",
        "beef",
        "beer",
        "before",
        "beg",
        "begin",
        "invade",
        "invent",
        "invest",
        "investigate",
        "invite",
        "involve",
        "iron",
        "irony",
        "irritate",
        "island",
        "isolate",
        "it",
        "joy",
        "judge",
        "judicial",
        "junior",
        "jury",
        "just",
        "justice",
        "justify",
        "keen",
        "keep",
        "key",
        "kick",
        "kid",
        "kill",
        "legitimate",
        "leisure",
        "lend",
        "lesson",
        "let",
        "letter",
        "level",
        "liberal",
        "liberty",
        "library",
        "license",
        "lid",
        "lie",
        "lift",
        "lunch",
        "luxury",
        "machine",
        "mad",
        "magazine",
        "magnet",
        "magnificent",
        "mail",
        "main",
        "maintain",
        "major",
        "majority",
        "make",
    ]
    
    var answers = [ // 답
        "사과",
        "바나나",
        "달력",
        "접근",
        "오후",
        "비행기",
        "살아있는",
        "모든",
        "굽다",
        "균형",
        "공",
        "기구",
        "금지",
        "그룹",
        "강타",
        "둑",
        "할당하다",
        "허락하다",
        "동맹하다",
        "거의",
        "홀로",
        "꿀벌",
        "쇠고기",
        "맥주",
        "앞에",
        "청하다",
        "시작하다",
        "침입하다",
        "발명하다",
        "투자하다",
        "조사하다",
        "초대하다",
        "말아넣다",
        "쇠",
        "반어",
        "노하게 하다",
        "섬",
        "고립시키다",
        "그것은",
        "즐거움",
        "재판관",
        "사법의",
        "손아래사람",
        "배심",
        "올바른",
        "정의",
        "옳다고 하다",
        "날카로운",
        "계속하다",
        "열쇠",
        "걷어차다",
        "아이",
        "죽이다",
        "합법의",
        "틈",
        "빌리다",
        "학과",
        "시키다",
        "편지",
        "수평의",
        "자유주의의",
        "자유",
        "도서관",
        "면허",
        "뚜껑",
        "눕다",
        "끌어올리다",
        "점심",
        "사치",
        "기계",
        "미친",
        "잡지",
        "자석",
        "장대한",
        "우편물",
        "주요한",
        "계속하다",
        "큰쪽의",
        "대다수",
        "만들다",
    ]
    var currentIndex = 0 // 현재 문제 번호
   
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var explainLabel: UILabel! // 영단어 외우기 설명
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(currentIndex == 0) {
            explainLabel.text = "✓ 뜻 보기 버튼을 클릭하면 영단어 뜻이 보여요!"
            explainLabel.textColor = .red
        }
        
        questionLabel.text = questions[currentIndex]
    }
    
    // 이전 문제
    @IBAction func prevQuestion(_ sender: UIButton) {
        if(currentIndex != 0) { // currentIndex값이 0인 경우엔 동작x
            currentIndex = (currentIndex-1)%questions.count
            questionLabel.text = questions[currentIndex]
            
            explainLabel.text = ""
            answerLabel.text = "🔎 Answer"
        }
    }
    
    // 다음 문제
    @IBAction func nextQuestion(_ sender: UIButton) {
        currentIndex = (currentIndex+1)%questions.count
        questionLabel.text = questions[currentIndex]

        explainLabel.text = ""
        answerLabel.text = "🔎 Answer"
    }
    

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answers[currentIndex]
    }
}

