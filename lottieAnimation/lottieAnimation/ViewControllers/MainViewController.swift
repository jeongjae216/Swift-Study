//
//  MainViewController.swift
//  lottieAnimation
//
//  Created by 정재 on 2023/02/14.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    
    //lottieAnimation 설정 값
    let animationView: LottieAnimationView = {
        let aniView = LottieAnimationView(name: "136473-waiting")
        aniView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        aniView.contentMode = .scaleAspectFill
        
        return aniView
    }()
    
    //제목 설정 값
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인 화면"
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 70, weight: .bold)
        
        return label
    }()

    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        //lottieAnimation 생성
        self.view.addSubview(self.animationView)
        
        self.animationView.center = self.view.center
        
        //애니메이션 실행
        self.animationView.play { (finish) in
            print("로딩 완료")
            
            //애니메이션 제거
            self.animationView.removeFromSuperview()
            
            self.view.backgroundColor = .white
            
            //제목 생성
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

