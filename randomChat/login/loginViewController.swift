//
//  loginViewController.swift
//  randomChat
//
//  Created by 양주원 on 2023/08/17.
//


//// -사용자는 로고를 볼수있다
//- 로그인 성공 알람을 볼수있다
//- 로그인을 볼수있다


// - 사용자는 로그인하여 모달로 로그인 성공알람 받고 넘어간다
// - ID 저장이나 패스워드 저장은 체크박스로 할수있다
import UIKit
import FirebaseAuth

class loginViewController: UIViewController {

    @IBAction func loginButton(_ sender: Any) {
        // 1. alert view 만들기
               let alert = UIAlertController(title: "환영합니다 님!", message: "", preferredStyle: .alert)

               // 2. alert action 만들기
               let action = UIAlertAction(title: "확인", style: .default, handler: nil)

               // 3. alert에 action 붙이기
               alert.addAction(action)

               // 4. alert present하기
               present(alert, animated: true, completion: nil)
           
    }
    
    @IBAction func forgotPwButton(_ sender: Any) {
        
    }
    @IBAction func signUpButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    var userModel = UserModel() // 인스턴스 생성
        
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
       
        
    // 로그인 method
    @objc func didTapButton() {
            Auth.auth().signInAnonymously()
            navigationController?.setViewControllers([ChatListViewController()], animated: true)
        }
    
 

}
