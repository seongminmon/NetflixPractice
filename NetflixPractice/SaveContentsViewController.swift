//
//  SaveContentsViewController.swift
//  NetflixPractice
//
//  Created by 김성민 on 5/16/24.
//

import UIKit

class SaveContentsViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var contentsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        
        navigationItem.title = "저장한 콘텐츠 목록"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        titleLabel.text = "'나만의 자동 저장' 기능"
        titleLabel.font = .systemFont(ofSize: 22, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        
        descriptionLabel.text = """
        취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.
        디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이
        없어요.
        """
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .gray
        
        mainImageView.image = UIImage(named: "dummy")
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.backgroundColor = .yellow
        
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        settingButton.setTitleColor(.white, for: .normal)
        settingButton.backgroundColor = .systemIndigo
        settingButton.layer.cornerRadius = 10
        
        contentsButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        contentsButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        contentsButton.setTitleColor(.black, for: .normal)
        contentsButton.backgroundColor = .white
        contentsButton.layer.cornerRadius = 10
    }
}

