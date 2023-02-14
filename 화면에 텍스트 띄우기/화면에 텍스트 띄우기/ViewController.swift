//
//  ViewController.swift
//  화면에 텍스트 띄우기
//
//  Created by 정재 on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    //제목
    var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Test"
        label.textColor = .yellow
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 50, weight: .bold)
        
        return label
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
        
        //제목
        self.view.addSubview(self.titleLabel)
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

}

