//
//  RegisterViewController.swift
//   navigation controller
//
//  Created by 정재 on 2023/02/15.
//

import UIKit

class RegisterViewController: UIViewController {
    

    @IBOutlet var backToLoginViewControllerButton: UIButton!
    
    @IBAction func backToLoginViewControllerButtonClicked(_ sender: UIButton) {
        print("RegisterViewController - backToLoginViewControllerButtonClicked() called/로그인 버튼 클릭!")
        
        //이전화면으로 돌아가기
        self.navigationController?.popViewController(animated: true)
    }
    
    //뷰가 생성 되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //상단 네비게이션바 숨김 처리
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
}
