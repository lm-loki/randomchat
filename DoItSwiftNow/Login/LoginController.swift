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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        Swift.print(segue.identifier)
        if segue.identifier == "View2Controller" {
            let tabBarController = segue.destination as! UITabBarController
            tabBarController.title = "TabBarController"
        }
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
    
    @IBAction func loginBtnMove(_ sender: UIButton) {
        // FAQ.storyboard 파일을 로드하여 UIStoryboard 객체 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // ContactViewController의 ID를 사용하여 인스턴스화
        let tabbarVC  = storyboard.instantiateViewController(withIdentifier: "MainController") as! UITabBarController
        // apply full screen
        tabbarVC.modalPresentationStyle = .fullScreen
        // 현재 ViewController의 navigationController에 push
        self.present(tabbarVC,animated: true, completion: nil)
        // self.navigationController?.pushViewController(contactVC, animated: true)
        Swift.print("success")
    }
    @IBAction func forgetBtnMove(_ sender: UIButton) {
//        // FAQ.storyboard 파일을 로드하여 UIStoryboard 객체 생성
//        let storyboard = UIStoryboard(name: "TabTest", bundle: nil)
//        // Swift.print(storyboard.instantiateViewController(withIdentifier: "View2Controller"))
//        // ContactViewController의 ID를 사용하여 인스턴스화
//        let mainTabBarController  = storyboard.instantiateViewController(withIdentifier: "View2Controller").children[0] as! UITabBarController
////        storyboard.instantiateViewController(withIdentifier: <#T##String#>)
        Swift.print("success")

          performSegue(withIdentifier: "View2Controller", sender: self)

    }
}

