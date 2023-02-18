//
//  LoginViewController.swift
//   navigation controller
//
//  Created by 정재 on 2023/02/15.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    
    //MARK: - Override Method
    //뷰가 생성 되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //상단 네비게이션바 숨김 처리
        self.navigationController?.isNavigationBarHidden = true
        
        //로그인 버튼 눌렀을 때
        self.loginButton.addTarget(self, action: #selector(self.moveToMainViewController), for: .touchUpInside)
    }
    
    //MARK: - FilePrivate Method
    //메인화면으로 이동
    @objc fileprivate func moveToMainViewController() {
        print("LoginViewController -> moveToMainViewController() called")
        
        let mainViewController = MainViewController()
        
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }


}

