//
//  MainViewController.swift
//  QR코드 만들기
//
//  Created by 정재 on 2023/02/16.
//

import UIKit
import WebKit
import AVFoundation
import QRCodeReader


class MainViewController: UIViewController, QRCodeReaderViewControllerDelegate {
    
    
    @IBOutlet var webView: WKWebView!
    @IBOutlet var qrCodeButton: UIButton!
    
    //QR코드 리더 뷰컨트롤러 생성
    lazy var readerVC: QRCodeReaderViewController = {
        let builder = QRCodeReaderViewControllerBuilder {
            $0.reader = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
            
            //뷰컨트롤러 설정
            $0.showTorchButton        = false
            $0.showSwitchCameraButton = false
            $0.showCancelButton       = false
            $0.showOverlayView        = true
            $0.rectOfInterest         = CGRect(x: 0.2, y: 0.2, width: 0.6, height: 0.6)
        }
        
        return QRCodeReaderViewController(builder: builder)
    }()
    
    //MARK: - Override Method
    //뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL (string: "https://www.naver.com")
                let requestObj = URLRequest(url: url!)
                webView.load(requestObj)
        
        self.qrCodeButton.layer.cornerRadius = 10
        self.qrCodeButton.layer.borderWidth = 3
        self.qrCodeButton.layer.borderColor = UIColor.green.cgColor
        self.qrCodeButton.addTarget(self, action: #selector(qrCodeButtonTouch), for: .touchUpInside)
    }
    
    //MARK: - Fileprivate Method
    @objc fileprivate func qrCodeButtonTouch() {
        print("MainViewController -> qrCodeButtonTouch() called")
        
        readerVC.delegate = self
        
        readerVC.completionBlock = { (result: QRCodeReaderResult?) in
            guard let scanUrlString = result?.value else { return }
            print("scanUrlString: \(scanUrlString)")
            
            guard let scanUrl = URL(string: scanUrlString) else { return }
            self.webView.load(URLRequest(url: scanUrl))
        }
        
        //뷰컨트롤러 보여주는 방식
        readerVC.modalPresentationStyle = .formSheet
        
        //완성된 뷰컨트롤러를 화면에 보여줌
        present(readerVC, animated: true, completion: nil)
    }
    
    //MARK: - QRCodeReader Delegate Method
    func reader(_ reader: QRCodeReaderViewController, didScanResult result: QRCodeReaderResult) {
      reader.stopScanning()

      dismiss(animated: true, completion: nil)
    }

    func readerDidCancel(_ reader: QRCodeReaderViewController) {
      reader.stopScanning()

      dismiss(animated: true, completion: nil)
    }


}

