//
//  ViewController.swift
//  NetflixPractice
//
//  Created by 김성민 on 5/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var recommandTextField: UITextField!
    
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var extraInfoLabel: UILabel!
    @IBOutlet var extraInfoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        titleLabel.text = "JACKFLIX"
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .red
        
        let textFieldList: [UITextField] = [
            emailTextField,
            passwordTextField,
            nicknameTextField,
            locationTextField,
            recommandTextField,
        ]
        
        emailTextField.placeholder = "이메일 주소 또는 전화번호"
        passwordTextField.placeholder = "비밀번호"
        nicknameTextField.placeholder = "닉네임"
        locationTextField.placeholder = "위치"
        recommandTextField.placeholder = "추천 코드 입력"
        
        passwordTextField.isSecureTextEntry = true
//        recommandTextField.keyboardType = .numberPad
        
        textFieldList.forEach {
            $0.font = .systemFont(ofSize: 16)
            $0.textAlignment = .center
            $0.borderStyle = .roundedRect
            $0.textColor = .white
            $0.tintColor = .white
            $0.backgroundColor = .lightGray
        }
        
        signInButton.setTitle("회원가입", for: .normal)
        signInButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.backgroundColor = .white
        
        extraInfoLabel.text = "추가 정보 입력"
        extraInfoLabel.textColor = .white
        
        extraInfoSwitch.setOn(true, animated: true)
        extraInfoSwitch.onTintColor = .red
        extraInfoSwitch.thumbTintColor = .gray
        
        descriptionLabel.text = "회원가입 버튼을 눌러보세요"
        descriptionLabel.font = .systemFont(ofSize: 16)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .white
    }
    
    // MARK: - 사용자가 회원 가입 버튼을 클릭하면, 키보드가 내려가는 기능을 구현해보세요.
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        // 키보드 내리기
        view.endEditing(true)
        
        // 조건 판단
        // (1) 이메일, 비밀번호 필수
        // (2) 비밀번호 6자리 이상
        // (3) 추천코드 숫자만
        var description = ""
        
        if emailTextField.text == "" || passwordTextField.text == "" {
            description += "이메일과 비밀번호를 입력해주세요.\n"
        }
        
        if let password = passwordTextField.text, password.count < 6 {
            description += "비밀번호를 6자리 이상 입력해주세요.\n"
        }
        
        if let recommandCode = recommandTextField.text, Int(recommandCode) == nil {
            description += "추천코드는 숫자만 입력해주세요.\n"
        }
        
        if description == "" {
            descriptionLabel.text = "회원 가입이 완료되었습니다."
            descriptionLabel.textColor = .white
        } else {
            descriptionLabel.text = description
            descriptionLabel.textColor = .red
        }
        print(description)
    }
    
}
