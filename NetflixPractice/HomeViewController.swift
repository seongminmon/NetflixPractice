//
//  HomeViewController.swift
//  NetflixPractice
//
//  Created by 김성민 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var starButton: UIButton!
    
    @IBOutlet var recommandLabel: UILabel!
    @IBOutlet var firstRecommandImageView: UIImageView!
    @IBOutlet var secondRecommandImageView: UIImageView!
    @IBOutlet var thirdRecommandImageView: UIImageView!
    
    @IBOutlet var firstLogoImageView: UIImageView!
    @IBOutlet var firstTop10ImageView: UIImageView!
    @IBOutlet var secondLogoImageView: UIImageView!
    @IBOutlet var secondTop10ImageView: UIImageView!
    @IBOutlet var thirdLogoImageView: UIImageView!
    @IBOutlet var thirdTop10ImageView: UIImageView!
    
    let imageList: [UIImage] = [
        UIImage(named: "노량")!,
        UIImage(named: "더퍼스트슬램덩크")!,
        UIImage(named: "밀수")!,
        UIImage(named: "범죄도시3")!,
        UIImage(named: "서울의봄")!,
        UIImage(named: "스즈메의문단속")!,
        UIImage(named: "아바타물의길")!,
        UIImage(named: "오펜하이머")!,
        UIImage(named: "육사오")!,
        UIImage(named: "콘크리트유토피아")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        navigationItem.title = "고래밥님"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
//        mainImageView.image = UIImage(named: "노량")
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.backgroundColor = .green
        mainImageView.layer.cornerRadius = 20
        
        genreLabel.text = "응원하고픈 · 흥미진진 · 사극 · 전투 · 한국 작품"
        genreLabel.font = .systemFont(ofSize: 14)
        genreLabel.textAlignment = .center
        genreLabel.textColor = .white
        
        playButton.setTitle("재생", for: .normal)
        playButton.setImage(UIImage(named: "play"), for: .normal)
        playButton.tintColor = .black
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 8
        
        starButton.setTitle("내가 찜한 리스트", for: .normal)
        starButton.setImage(UIImage(systemName: "plus"), for: .normal)
        starButton.tintColor = .white
        starButton.backgroundColor = .darkGray
        starButton.layer.cornerRadius = 8
        
        recommandLabel.text = "지금 뜨는 콘텐츠"
        recommandLabel.font = .systemFont(ofSize: 18)
        recommandLabel.textColor = .white
        
        let imageViews: [UIImageView] = [
            firstRecommandImageView,
            secondRecommandImageView,
            thirdRecommandImageView
        ]
        
        makeRandomImage()
        
        imageViews.forEach {
            $0.contentMode = .scaleAspectFill
            $0.backgroundColor = .green
            $0.layer.cornerRadius = 10
        }
        
        let subImageViews: [UIImageView] = [
            firstLogoImageView,
            firstTop10ImageView,
            secondLogoImageView,
            secondTop10ImageView,
            thirdLogoImageView,
            thirdTop10ImageView,
        ]
        
        for i in 0..<subImageViews.count {
            subImageViews[i].contentMode = .scaleAspectFit
            subImageViews[i].backgroundColor = .none
            subImageViews[i].layer.cornerRadius = 10
            
            if i % 2 == 0 {
                subImageViews[i].image = UIImage(named: "single-badge")!
            } else {
                subImageViews[i].image = UIImage(named: "top10 badge")!
            }
            
            subImageViews[i].isHidden = Bool.random()
        }
    }
    
    // 4개의 이미지 뷰에 중복없이 랜덤 이미지 넣기
    func makeRandomImage() {
        var tempImageList: [UIImage] = []
        
        let imageViews: [UIImageView] = [
            mainImageView,
            firstRecommandImageView,
            secondRecommandImageView,
            thirdRecommandImageView
        ]
        
        imageViews.forEach {
            var randomImage = self.imageList.randomElement()!
            while tempImageList.contains(randomImage) {
                randomImage = self.imageList.randomElement()!
            }
            tempImageList.append(randomImage)
            $0.image = randomImage
        }
    }
    
    // MARK: - 재생 버튼을 클릭했을 때 4개의 이미지(포스터)가 랜덤으로 변경되도록 구현해보세요.
    
    // MARK: - 재생 버튼을 클릭했을 때 아래 3개의 이미지뷰에 Top10 / 지금 시청하기 / 새로운 에피소드 요소가 랜덤으로 보이거나 사라지게 설정해보세요. (위치가 일정하지 않아도 괜찮습니다)
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        makeRandomImage()
        
        let subImageViews: [UIImageView] = [
            firstLogoImageView,
            firstTop10ImageView,
            secondLogoImageView,
            secondTop10ImageView,
            thirdLogoImageView,
            thirdTop10ImageView,
        ]
        
        subImageViews.forEach {
            $0.isHidden = Bool.random()
        }
    }
    
}
