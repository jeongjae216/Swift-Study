//
//  MainTabBarController.swift
//  스토리보드 없이 탭 바 만들기
//
//  Created by 정재 on 2023/02/20.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MainTabBarController -> viewDidLoad() called")
        
        //네비게이션 컨트롤러 설정
        let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "첫번째", bgColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "두번째", bgColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "세번째", bgColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
        let fourthNC = UINavigationController.init(rootViewController: MyViewController(title: "네번째", bgColor: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
        let fifthNC = UINavigationController.init(rootViewController: MyViewController(title: "다섯번째", bgColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
        
        self.viewControllers = [firstNC, secondNC, thirdNC, fourthNC, fifthNC]
        
        //탭 바 아이템 설정
        let firstTabBarItem = UITabBarItem(title: "첫번째", image: UIImage(systemName: "airplayaudio"), tag: 0)
        let secondTabBarItem = UITabBarItem(title: "두번째", image: UIImage(systemName: "airplayvideo"), tag: 1)
        let thirdTabBarItem = UITabBarItem(title: "세번째", image: UIImage(systemName: "arrow.clockwise.icloud.fill"), tag: 2)
        let fourthTabBarItem = UITabBarItem(title: "네번쨰", image: UIImage(systemName: "arrow.down.left.video.fill"), tag: 3)
        let fifthTabBarItem = UITabBarItem(title: "다섯번째", image: UIImage(systemName: "safari.fill"), tag: 4)
        
        //네비게이션 컨트롤러의 탭 바 아이템 설정
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        fourthNC.tabBarItem = fourthTabBarItem
        fifthNC.tabBarItem = fifthTabBarItem
    }
    
    
}
