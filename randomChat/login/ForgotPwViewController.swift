//
//  ForgotPwViewController.swift
//  randomChat
//
//  Created by 양주원 on 2023/08/22.
//

import UIKit

class ForgotPwViewController: UIViewController {

    @IBAction func exitButton(_ sender: UIButton) {
            self.dismiss(animated: true, completion: nil)
        }
    
    @IBAction func checkButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func authEmial(_ sender: Any) {
        // 1. alert view 만들기
               let alert = UIAlertController(title: "인증번호 발송했습니다!", message: "", preferredStyle: .alert)

               // 2. alert action 만들기
               let action = UIAlertAction(title: "확인", style: .default, handler: nil)

               // 3. alert에 action 붙이기
               alert.addAction(action)

               // 4. alert present하기
               present(alert, animated: true, completion: nil)
           
    }
    
}
