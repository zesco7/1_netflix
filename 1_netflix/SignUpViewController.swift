//
//  SignUpViewController.swift
//  1_netflix
//
//  Created by Mac Pro 15 on 2022/07/13.
//

import UIKit


class SignUpViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var appName: UILabel!
    
    @IBOutlet weak var mailOrPhonenum: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var recommendationCode: UITextField!
    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var infoOnOff: UISwitch!
    
    @IBOutlet weak var passwordDigitWarning: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appName.textColor = .red
        
        mailOrPhonenum.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        mailOrPhonenum.backgroundColor = .gray
        mailOrPhonenum.textColor = .white
        mailOrPhonenum.textAlignment = .center
        mailOrPhonenum.borderStyle = .roundedRect
        mailOrPhonenum.clearButtonMode = .whileEditing
        self.mailOrPhonenum.delegate = self
        
        password.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        password.backgroundColor = .gray
        password.textColor = .white
        password.textAlignment = .center
        password.borderStyle = .roundedRect
        password.textContentType = .oneTimeCode // .newPassword면 strong password 에러 발생함.
        password.isSecureTextEntry = true
        password.clearButtonMode = .whileEditing
        self.password.delegate = self
       
        
        nickname.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        nickname.backgroundColor = .gray
        nickname.textColor = .white
        nickname.textAlignment = .center
        nickname.borderStyle = .roundedRect
        nickname.clearButtonMode = .whileEditing
        self.nickname.delegate = self
        
        location.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        location.backgroundColor = .gray
        location.textColor = .white
        location.textAlignment = .center
        location.borderStyle = .roundedRect
        location.clearButtonMode = .whileEditing
        self.location.delegate = self
        
        recommendationCode.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        recommendationCode.backgroundColor = .gray
        recommendationCode.textColor = .white
        recommendationCode.textAlignment = .center
        recommendationCode.borderStyle = .roundedRect
        recommendationCode.clearButtonMode = .whileEditing
        recommendationCode.keyboardType = .numberPad // 키보드타입 설정
        self.recommendationCode.delegate = self
        
        signUp.backgroundColor = .white
        signUp.setTitle("회원가입", for: .normal)
        signUp.setTitleColor(.black, for: .normal)
        signUp.layer.cornerRadius = 5
        signUp.titleLabel?.font = UIFont.systemFont(ofSize: 22.0, weight: .bold)
        
        infoOnOff.setOn(true, animated: true)
        infoOnOff.onTintColor = .red

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                self.view.endEditing(true)
                return true
    }
    
    //회원가입버튼 클릭효과 : 1. 키보드 올려져있을때 내리기, 2. 안내메시지
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
           view.endEditing(true)
        if mailOrPhonenum.hasText == false {
            mailOrPhonenum.attributedPlaceholder = NSAttributedString(string: "이메일 또는 전화번호는 필수입력입니다.", attributes: [.foregroundColor : UIColor.red])
        }
        if password.hasText == false {
            password.attributedPlaceholder = NSAttributedString(string: "비밀번호는 필수입력입니다.", attributes: [.foregroundColor : UIColor.red])
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)

    }
    
}


/*
#업데이트 완료
 1. 이메일,비번 필수기입 안내메시지 설정: 회원가입버튼 클릭시  placeholder표시로 필수기입 안내
 2. 키패드 리턴 누르면 창 닫히도록 설정 : func textFieldShouldReturn 사용

#업데이트 필요
 1. 비밀번호 최소자리수 설정
 2. 이메일,비번 필수기입 안내메시지 표시되고 루트뷰 탭하면 원래 placeholder 나오게 설정
 
#피드백
 1. 당분간은 어떤 기능이 필요한지 인터넷에서 찾는 것 보다 새싹 멤버 코드보면서 익히는게 더 빠를듯하다. 새싹 멤버 코드로도 해결안되는거 위주로 구글링해야겠음. 어느 정도 익숙해지고 난 다음부터 직접 코드짜는게 좋겠다. 일일이 검색하면서 하니까 시간이 너무 오래걸린다.
 2. 키보드창크기 때문에 constraint걸린 텍스트필드 위치 일정높이 위로 올리면 위치깨지는 이유 파악 필요함.
 */
