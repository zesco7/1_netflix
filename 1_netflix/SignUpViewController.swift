//
//  SignUpViewController.swift
//  1_netflix
//
//  Created by Mac Pro 15 on 2022/07/13.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var appName: UILabel!
    
    @IBOutlet weak var mailOrPhonenum: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var recommendationCode: UITextField!
    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var infoOnOff: UISwitch!
    
    var new = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appName.textColor = .red
        
        mailOrPhonenum.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        mailOrPhonenum.backgroundColor = .gray
        mailOrPhonenum.textColor = .white
        mailOrPhonenum.textAlignment = .center
        mailOrPhonenum.borderStyle = .roundedRect
        mailOrPhonenum.clearButtonMode = .whileEditing
        
        password.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        password.backgroundColor = .gray
        password.textColor = .white
        password.textAlignment = .center
        password.borderStyle = .roundedRect
        password.isSecureTextEntry = true
        password.clearButtonMode = .whileEditing
       
        
        nickname.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        nickname.backgroundColor = .gray
        nickname.textColor = .white
        nickname.textAlignment = .center
        nickname.borderStyle = .roundedRect
        nickname.clearButtonMode = .whileEditing
        
        location.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        location.backgroundColor = .gray
        location.textColor = .white
        location.textAlignment = .center
        location.borderStyle = .roundedRect
        location.clearButtonMode = .whileEditing
        
        recommendationCode.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        recommendationCode.backgroundColor = .gray
        recommendationCode.textColor = .white
        recommendationCode.textAlignment = .center
        recommendationCode.borderStyle = .roundedRect
        recommendationCode.clearButtonMode = .whileEditing
        recommendationCode.keyboardType = .numberPad // 키보드타입 설정
        
        signUp.backgroundColor = .white
        signUp.setTitle("회원가입", for: .normal)
        signUp.setTitleColor(.black, for: .normal)
        signUp.layer.cornerRadius = 5
        signUp.titleLabel?.font = UIFont.systemFont(ofSize: 22.0, weight: .bold)
        
        infoOnOff.setOn(true, animated: true)
        infoOnOff.onTintColor = .red

    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
           view.endEditing(true)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){       self.view.endEditing(true)

    }
    
}


/*
#피드백(구현 못한 기능 위주)
 1. 이메일,비번 필수기입
 2. 비밀번호 최소자리수
 3. 키보드창크기 때문에 constraint걸린 텍스트필드 위치 일정높이 위로 올리면 위치깨지는 이유 파악 필요
 5. 키패드 리턴 누르면 창 닫히도록 설정 필요
 
#느낀점
 1. 실제 화면이 어떻게 기능하도록 구현하는지 감을 못잡겠음. 예를 들어 추가 정보 입력 스위치 off상태면 텍스필드가 비활성화되고, on상태면 활성화 되는건가? 단순히 기능만 추가하는 것이 아니라 왜 이런 기능이 필요한지 먼저 생각해봐야될듯 싶다.
 2. 단락평가 개념 추가 공부 필요
 
 */
