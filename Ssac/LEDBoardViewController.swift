//
//  BoardViewController.swift
//  Ssac
//
//  Created by 방선우 on 2022/07/06.
//

import UIKit

class LEDBoardViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet var btnList: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(sendButton, buttonTitle: "전송", highlightedButton: "빨리보내", backgroundButtonColor: .yellow)
        designButton(textColorButton, buttonTitle: "떼잉", highlightedButton: "눌림", backgroundButtonColor: .magenta)
        designTextField()
        
        resultLabel.backgroundColor = .clear
        resultLabel.numberOfLines = 0
        
        //1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .cyan
            item.layer.cornerRadius = 5
        }
        //2. 아웃렛컬렉션
        for i in buttonArray {
            i.backgroundColor = .orange
            i.layer.cornerRadius = 5
        }
    }
    
    //MARK: - 메서드 생성
    func designTextField() { //() -> 함수호출 연산자
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요~"
        userTextField.keyboardType = .emailAddress
    }
    
    //buttonOutletVariableName: 외부매개변수, Argument Label
    //buttonName: 내부 매개변수, Prameter name
    //실제현업에서는 매개변수로 퉁쳐서 부름
    //_ -> 와일트카드식별자
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedButton: String, backgroundButtonColor bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedButton, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        print(userTextField.text?.count)
        print(sendButton.currentTitle)
        resultLabel.text = userTextField.text
    }
    
    @IBAction func tapGestrueCliked(_ sender: UITapGestureRecognizer) {
        // 키보드를 내릴 수 있는 가장 간단한 방법
        // 제스처는 뷰의 레이어와 상관없음 지금은 d텍스트필드와 버튼을 제외한 모든 영역이 제스처영역임
        view.backgroundColor = .gray
        view.endEditing(true)
        
        if topView.isHidden == false {
            topView.isHidden = true
        } else {
            topView.isHidden = false
        }
    }
    
    // 같은 기능을 하는 버튼 여러개면 이렇게 묶어줄 수도 있음
    @IBAction func exampleBtn(_ sender: UIButton) {
    }
    
    //연결관계 다 끊고 버튼을 Any로
    //타입에 상관없이 같은 기능을 하게 하고 싶다
    
    @IBAction func exitKeyboard(_ sender: UITextField) {
        userTextField.endEditing(true)
    }
}

