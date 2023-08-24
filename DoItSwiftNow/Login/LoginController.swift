//
//  LoginController.swift
//  DoItSwiftNow
//
//  Created by user244383 on 8/22/23.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet var signup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMove(_ sender: UIButton) {

        // FAQ.storyboard 파일을 로드하여 UIStoryboard 객체 생성
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        // ContactViewController의 ID를 사용하여 인스턴스화
        let contactVC = storyboard.instantiateViewController(withIdentifier: "SignUp") as! SignUpController
        // apply full screen
        contactVC.modalPresentationStyle = .fullScreen
        // 현재 ViewController의 navigationController에 push
        // self.present(contactVC,animated: true, completion: nil)
        self.navigationController?.pushViewController(contactVC, animated: true)
        Swift.print("success")

    }
    
}

