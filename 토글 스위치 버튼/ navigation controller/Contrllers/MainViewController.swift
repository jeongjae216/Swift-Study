//
//  MainViewController.swift
//   navigation controller
//
//  Created by 정재 on 2023/02/17.
//

import UIKit


class MainViewController: UIViewController {
    
    
    //제목 설정
    var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 50, weight: .bold)
        label.textColor = .white
        
        return label
    }()
    
    //색 바꾸기 버튼 설정
    var changeButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Change Color", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        
        return button
    }()
    
    //토글 변수
    var isColorLink: Bool?
    
    //MARK: - Override Method
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .link
        
        self.isColorLink = true
        
        //제목 생성
        self.view.addSubview(self.titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        //색 바꾸기 버튼 생성
        self.view.addSubview(self.changeButton)
        self.changeButton.translatesAutoresizingMaskIntoConstraints = false
        self.changeButton.centerXAnchor.constraint(equalTo: self.titleLabel.centerXAnchor).isActive = true
        self.changeButton.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20).isActive = true
        
        //색 바꾸기 버튼 눌렀을 때
        self.changeButton.addTarget(self, action: #selector(self.changeBackGroundColor), for: .touchUpInside)
    }
    
    //MARK: - FilePrivate Method
    //배경색 바꾸기
    @objc fileprivate func changeBackGroundColor() {
        if isColorLink == true {
            self.view.backgroundColor = .blue
            self.changeButton.backgroundColor = .link
            
            self.isColorLink = false
        } else {
            self.view.backgroundColor = .link
            self.changeButton.backgroundColor = .blue
            
            self.isColorLink = true
        }
        
        print("MainViewController -> changeBackGroundColor() called/ backgroundColorIsLink: \(isColorLink!)")
    }
    
    
}
