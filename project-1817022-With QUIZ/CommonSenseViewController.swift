//
//  CommonSenseViewController.swift
//  test-1817022
//
//  Created by mac037 on 2022/05/22.
//

import UIKit

// 상식 퀴즈
class CommonSenseViewController: UIViewController {
    
    var questions = [ // 문제
            "대한민국의 수도는?",
            "국보 1호였던 문화재의 이름은?",
            "오스트레일리아(호주)의 수도는?",
            "우리나라 최초의 한글 소설로 전해지는 고전소설의 이름은?",
            "뮤지컬, 연극, 오페라, 음악회 등 공연이 끝난 후 관객이 박수를 보내 배우들을 다시 무대로 나오게 하는 것은?",
            "불로장생을 꿈꿔 전 세계를 뒤져 불로초를 찾았던 왕의 이름은?",
            "평창동계올림픽이 열렸던 해는 몇 년도인가? (숫자만 적으세요)",
            "학교폭력 상담 전화는 몇 번인가?",
            "이탈리아의 수도는?",
            "둘 사이의 다툼에서 제 3자가 이득을 본다는 뜻의 사자성어는?",
            "자라 보고 놀란 가슴 ㅇㅇㅇ 보고 놀란다",
            "북한에서는 이것을 얼음보숭이라고 부르는데, 이것은 무엇일까요?",
            "다정하고 금실 좋은 부부를 비유적으로 나타내는 단어는?",
            "한국의 국가 전화번호는 몇 번인가?",
            "색상 대비를 이루는 한 쌍의 색상, 즉 반대되는 색상을 의미하는 단어는?",
            "귀신처럼 나타났다가 귀신처럼 사라진다. '자유자재로 나타나고 사라진다'는 뜻의 사자성어는?",
            "대한민국의 광역시는 총 몇 개인가? (숫자만 적으세요)",
            "스마트폰을 기기에 접촉해 카드결제 및 가까운 거리에서 데이터를 주고받는 통신기술은?",
            "우체국 로고에 있는 새는 무엇인가요?",
            "세계 보건 기구 WHO의 엠블럼에는 어떤 동물이 그려져 있을까요?",
            "견우와 직녀는 칠월 칠석에 무엇을 통해 만났나요?",
            "서당 개 ㅇ년에 풍월을 읊는다. ㅇ에 들어갈 숫자는?",
            "태국의 수도는?",
            "고려시대에 문익점이 중국에서 '이것'을 갖고왔다고 알려져있는데, '이것'은 무엇인가?",
            "먹을 가는데 쓰는 '이것'의 이름은?",
            "'두 개의 심장'이란 별명을 가졌던 축구선수의 이름은?",
            "아이스하키에서 쓰는 공의 명칭은?",
            "노란색과 파란색을 섞으면 나오는 색은?",
            "베트남의 수도는?",
            "큰 곰자리의 꼬리인 7개의 별을 총칭하는 말로, 국자모양과 유사한 이 별은 무엇인가?",
            "타지에서 고향(집)을 그리워하는 마음에서 비롯된 이 병의 이름은?",
            "각종 범죄수사 중 획득한 증거물을 과학적으로 감정하고 연구자료를 축적해 가는 국가기관인 국과수는 무엇의 약자일까요?",
            "홍채 세포의 DNA 이상으로 인한 멜라닌 색소 농도 차이 때문에 양쪽 눈의 색깔이 다른 현상인 이것은 무엇일까요?",
            "전래동화 콩쥐팥쥐에서 밑 빠진 독을 막아준 동물은?",
            "코끼리의 송곳니를 부르는 명칭은?",
            "대한민국의 IMF 경제위기는 몇 년도에 발생했을까요?",
            "고생 끝에 낙이 온다 라는 뜻을 가진 사자성어는?",
            "뼈를 바꾸고 태를 빼낸다는 뜻으로, 몸과 얼굴이 몰라볼 만큼 좋게 변한 것을 비유하는 말은?",
            "제자가 스승보다 더 나음을 비유하는 말은?",
            "타인의 기대나 관심으로 인해 능률이 오르거나 결과가 좋아지는 현상을 ㅇㅇ 효과라고 한다. ㅇㅇ에 들어갈 말은?",
            "유교의 도덕적 사상에서 기본이 되는 3가지의 강령과 5가지의 인륜을 무엇이라 할까요?",
            "국가권력 작용을 입법·행정·사법의 셋으로 나눠, 국가의 남용을 방지하는 통치조직원리인 이것을 ㅇㅇ분립이라 한다. ㅇㅇ에 들어갈 단어는?",
            "1627년(인조 때) 만주에 본거를 둔 후금의 침입으로 일어난 조선과 후금 사이의 전쟁인 이것은 무엇일까요?",
            "한 입 크기로 만든 중국의 만두로 3,000년 전 부터 중국 남부 광둥(광동)지방에서 만들어 먹기 시작한 이것은 무엇일까요?",
            "서울특별시 광진구 자양동과 송파구 신천동을 잇는 한강의 다리이며, 1972년 7월에 준공 하였습니다 이곳은 어디일까요?",
            "흉측한 얼굴을 가면으로 가린 괴신사가 아름다운 프리마돈나를 짝사랑하는 내용이 담긴 이 뮤지컬의 이름은 무엇일까요?",
            "한국 청동기 시대의 대표적인 무덤 양식으로, 지석묘라고도 불리는 이것은 무엇일까요?",
            "노벨상 분야는 총 6개로 생리의학상, 물리학상, 화학상, 문학상, 경제학상, 그리고 ○○○이 있습니다 이것은 무엇일까요?",
            "범죄자에게 단기의 자유형을 선고할 때 그 정상을 참작하여 일정기간 동안 그 형을 유예하는 제도인 이 제도는 무엇일까요?",
            "울릉도의 옛 이름은 '우산국'입니다 그렇다면 '제주도'의 옛 이름은 무엇일까요?",
            "스포츠 종목 중 '마라톤'을 금지하는 페르시아의 후예인 이 나라는 어디일까요?",
            "빈모강에 속하는 환형동물의 총칭으로 철학자 아리스토텔레스는 이것을 '지구의 창자'라고 했습니다. 이것은 무엇일까요?",
            "눈 앞에 먼지나 벌레같은 무언가가 떠다니는 것처럼 느끼는 증상이며, 시선위치에 따라 따라다니기도 하는 이 증상은 무엇일까요?",
            "축구 경기에서 공격팀 선수가 상대편 진영에서 공보다 앞쪽에 있을 때 적용되는 반칙인 이것은 무엇일까요? (한글로 작성)",
            "돼지의 '등겹살'이며 목심과 등심의 연결부위에 있는 사람 손바닥만한 오각형 모양의 살코기인 이 부위는?",
            "아시아 서남부에 있는 공화국인 '이스라엘'의 수도는 어디일까요?",
            "고려 충렬왕 때 추적이 편찬했고, 중국 고전의 금언, 명구를 편집해서 만든 어린이를 위한 학습책인 이것은 무엇일까요?",
            "작은 변화가 폭풍우와 같은 커다란 변화로 유발시키는 현상을 ㅇㅇ 효과라고 합니다. ㅇㅇ에 들어갈 단어는 무엇일까요?",
            "2001년 세계 최초로 안락사를 합법화한 나라는 어디일까요?",
            "17세기 조선 숙종 때의 문신이자 소설가인 서포 '김만중'이 쓴 유명한 한글 소설인 이것은 무엇일까요?",
        ]
        
        var answers = [ // 답
            "서울",
            "숭례문",
            "캔버라",
            "홍길동전",
            "커튼콜",
            "진시황",
            "2018",
            "117",
            "로마",
            "어부지리",
            "솥뚜껑",
            "아이스크림",
            "잉꼬부부",
            "82",
            "보색",
            "신출귀몰",
            "6",
            "NFC",
            "제비",
            "뱀",
            "오작교",
            "3",
            "방콕",
            "목화",
            "벼루",
            "박지성",
            "퍽",
            "초록색",
            "하노이",
            "북두칠성",
            "향수병",
            "국립과학수사연구원",
            "오드아이",
            "두꺼비",
            "상아",
            "1997",
            "고진감래",
            "환골탈태",
            "청출어람",
            "피그말리온",
            "삼강오륜",
            "삼권분립",
            "정묘호란",
            "딤섬",
            "잠실대교",
            "오페라의 유령",
            "고인돌",
            "평화상",
            "집행유예",
            "탐라",
            "이란",
            "지렁이",
            "비문증",
            "오프사이드",
            "가브리살",
            "예루살렘",
            "명심보감",
            "나비",
            "네덜란드",
            "구운몽",
        ]
        var currentIndex = 0 // 현재 문제 번호

    @IBOutlet weak var questionLabel: UILabel! // 영단어
    @IBOutlet weak var answerTextField: UITextField! // 정답 입력
    @IBOutlet weak var checkLabel: UILabel! // 정답 여부
    @IBOutlet weak var questionNumLabel: UILabel! // 문제 번호
    @IBOutlet weak var explainLabel: UILabel! // 상식 퀴즈 설명
    
    @IBOutlet weak var correctAnswerLabel: UILabel! // 올바른 정답
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        view.addGestureRecognizer(tapGesture)
        
        if(currentIndex == 0) {
            explainLabel.text = "✓ 입력 칸에 답을 입력 후 정답 확인 버튼을 클릭하세요!"
            explainLabel.textColor = .red
        }
        
        checkLabel.text = ""
        correctAnswerLabel.text = ""
        questionLabel.text = questions[currentIndex]
        
        questionNumLabel.text = "📚 상식 퀴즈 " + String(currentIndex+1)
    }
    
    // 이전 문제
    @IBAction func prevQuestion(_ sender: UIButton) {
        answerTextField.text = "";
        
        if(currentIndex != 0) { // currentIndex값이 0인 경우엔 동작x
            currentIndex = (currentIndex-1)%questions.count
            questionLabel.text = questions[currentIndex]
            
            explainLabel.text = ""
        }
        
        questionNumLabel.text = "📚 상식 퀴즈 " + String(currentIndex+1)
        checkLabel.text = ""
        correctAnswerLabel.text = ""
    }
    
    // 다음 문제
    @IBAction func nextQuestion(_ sender: UIButton) {
        answerTextField.text = "";
        
        currentIndex = (currentIndex+1)%questions.count
        questionLabel.text = questions[currentIndex]
        
        questionNumLabel.text = "📚 상식 퀴즈 " + String(currentIndex+1)
        checkLabel.text = ""
        explainLabel.text = ""
        correctAnswerLabel.text = ""
    }
    
    // 정답 확인
    @IBAction func checkAnswer(_ sender: UIButton) {
        if(answerTextField.text == answers[currentIndex]) {
            checkLabel.text = "👏🏻 정답!"
            checkLabel.textColor = .blue
            correctAnswerLabel.text = ""
        }
        
        else {
            checkLabel.text = "✘ 오답!"
            checkLabel.textColor = .red
            
            correctAnswerLabel.text = "🔎 정답 : " + answers[currentIndex]
        }
    }
}

extension CommonSenseViewController {
       @objc func dismissKeyBoard(sender: UITapGestureRecognizer) {
            answerTextField.resignFirstResponder()
       }
}
