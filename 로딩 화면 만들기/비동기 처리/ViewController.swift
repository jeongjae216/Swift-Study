//
//  ViewController.swift
//  비동기 처리
//
//  Created by 정재 on 2023/02/18.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    
    @IBOutlet var mainTitle: UILabel!
    
    //MARK: - Override Method
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ViewController -> viewDidLoad() called")
        
        KRProgressHUD.show()
        
        //컴플리션 블락
        loading(completion: { result in
            print("completionBlock으로부터 전달받은 값: \(result)")
            
            KRProgressHUD.showSuccess()
            
            self.mainTitle.text = result
        })
    }
    
    //MARK: - Fileprivate Method
    fileprivate func loading(completion: @escaping(String) -> ()) {
        print("ViewController -> loading() called")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            completion("로딩 완료")
        }
    }


}

