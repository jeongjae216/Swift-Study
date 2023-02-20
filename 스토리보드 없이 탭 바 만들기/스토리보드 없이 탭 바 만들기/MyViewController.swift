//
//  MyViewController.swift
//  스토리보드 없이 탭 바 만들기
//
//  Created by 정재 on 2023/02/20.
//

import UIKit

class MyViewController: UIViewController {
    
    
    convenience init(title: String, bgColor: UIColor) {
        self.init()
        
        self.title = title
        self.view.backgroundColor = bgColor
    }
    
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

