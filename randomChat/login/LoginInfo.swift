//
//  LoginInfo.swift
//  randomChat
//
//  Created by 양주원 on 2023/08/24.
//

import Foundation

final class UserModel {
    struct User {
        var email: String
        var password: String
    }
//    는 NSPredicate 클래스를 사용하여 이메일 형식을 검사하는 객체를 생성합니다.
//
//    NSPredicate 클래스는 데이터를 필터링하거나 검색하는 데 사용되는 논리적 조건을 나타냅니다.
//
//    이 코드에서는 "SELF MATCHES %@"라는 포맷 문자열과 emailRegEx라는 인자를 전달하여 NSPredicate 객체를 생성합니다.
//
//    "SELF MATCHES %@"는 SELF가 %@와 일치하는지 확인하는 논리적 조건을 의미합니다. 여기서 SELF는 테스트할 데이터를 나타내고, %@는 인자로 전달된 emailRegEx를 나타냅니다.
//
//    emailRegEx는 이메일 형식을 정규식으로 표현한 문자열입니다. "[A-Z0-9a-z._%±]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"라는 정규식은 다음과 같은 의미를 가집니다.
//
//    [A-Z0-9a-z._%±]+ : 대문자, 소문자, 숫자, 점, 밑줄, 퍼센트, 더하기, 빼기 중 하나 이상의 문자
//    @ : @ 기호
//    [A-Za-z0-9.-]+ : 대문자, 소문자, 숫자, 점, 하이픈 중 하나 이상의 문자
//    \. : 점 기호
//    [A-Za-z]{2,} : 대문자 또는 소문자가 2개 이상인 문자열
    var users: [User] = [
        User(email: "abc1234@naver.com", password: "qwerty1234"),
        User(email: "dazzlynnnn@gmail.com", password: "asdfasdf5678")
    ]
    //이 코드는 emailTest라는 NSPredicate 객체의 evaluate(with:) 메소드를 호출하고, id라는 매개변수를 전달하여 id가 이메일 형식에 맞는지 결과를 반환합니다.
    // 아이디 형식 검사
    func isValidEmail(id: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: id)
    }
    
    // 비밀번호 형식 검사
    func isValidPassword(pwd: String) -> Bool {
        let passwordRegEx = "^[a-zA-Z0-9]{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        return passwordTest.evaluate(with: pwd)
    }
} // end of UserModel
