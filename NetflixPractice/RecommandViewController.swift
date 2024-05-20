//
//  RecommandViewController.swift
//  NetflixPractice
//
//  Created by 김성민 on 5/16/24.
//

import UIKit

class RecommandViewController: UIViewController {
    
    @IBOutlet var searchView: UIView!
    @IBOutlet var searchImageView: UIImageView!
    @IBOutlet var searchTextField: UITextField!
    
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        navigationItem.title = "NEW & HOT 검색"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        searchView.backgroundColor = .darkGray
        searchView.layer.cornerRadius = 12
        
        searchImageView.image = UIImage(systemName: "magnifyingglass")
        searchView.contentMode = .scaleAspectFit
        searchImageView.tintColor = .lightGray
        
        searchTextField.font = .systemFont(ofSize: 18)
        // 플레이스 홀더 text, color
        searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        // 커서 색깔
        searchTextField.tintColor = .white
        searchTextField.textColor = .white
        searchTextField.backgroundColor = .darkGray

        firstButton.setTitle("공개 예정", for: .normal)
        firstButton.titleLabel?.font = .systemFont(ofSize: 12)
        firstButton.setImage(UIImage(named: "blue")?.withRenderingMode(.alwaysOriginal), for: .normal)
        firstButton.layer.cornerRadius = 15
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.backgroundColor = .white
        
        secondButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        secondButton.titleLabel?.font = .systemFont(ofSize: 12)
        secondButton.setImage(UIImage(named: "turquoise")?.withRenderingMode(.alwaysOriginal), for: .normal)
        secondButton.layer.cornerRadius = 15
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.backgroundColor = .black
        
        thirdButton.setTitle("TOP 10 시리즈", for: .normal)
        thirdButton.titleLabel?.font = .systemFont(ofSize: 12)
        thirdButton.setImage(UIImage(named: "pink")?.withRenderingMode(.alwaysOriginal), for: .normal)
        thirdButton.layer.cornerRadius = 15
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .black
        
        mainLabel.text = "이런! 찾으시는 작품이 없습니다."
        mainLabel.font = .systemFont(ofSize: 28, weight: .bold)
        mainLabel.textAlignment = .center
        mainLabel.textColor = .white
        
        subLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해보세요."
        subLabel.font = .systemFont(ofSize: 16)
        subLabel.textAlignment = .center
        subLabel.textColor = .gray
    }
    
    // MARK: - 공개 예정 / 모두의 인기 콘텐츠 / Top 10 시리즈를 선택했을 때 아래 레이블 문구가 바뀌도록 설정해보세요. (레이블 문구는 자유입니다)
    
    // MARK: - 공개 예정을 클릭하면 다른 두 버튼의 배경색이 사라지고, 모두의 인기 컨텐츠를 클릭하면 다른 버튼의 배경색이 사라지도록 구현해보세요.

    @IBAction func firstButtonTapped(_ sender: UIButton) {
        mainLabel.text = "공개 예정!"
        subLabel.text = "공개 예정 서브 타이틀입니다."
        
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.backgroundColor = .white
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.backgroundColor = .black
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .black
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        mainLabel.text = "모두의 인기 콘텐츠!"
        subLabel.text = "모두의 인기 콘텐츠 서브 타이틀입니다."
        
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.backgroundColor = .black
        secondButton.setTitleColor(.black, for: .normal)
        secondButton.backgroundColor = .white
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .black
    }
    
    @IBAction func thridButtonTapped(_ sender: UIButton) {
        
        mainLabel.text = "TOP 10 시리즈!"
        subLabel.text = "TOP 10 시리즈 서브 타이틀입니다."
        
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.backgroundColor = .black
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.backgroundColor = .black
        thirdButton.setTitleColor(.black, for: .normal)
        thirdButton.backgroundColor = .white
        
//        let image = UIImage(systemName: "star")?.withTintColor(.black)
    }
    
}

