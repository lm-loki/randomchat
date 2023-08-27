//
//  Mocks.swift
//  randomChat
//
//  Created by 양주원 on 2023/08/26.
//

import Foundation

func getChatListMocks() -> [ChatList] {
    return (0...3).map { ChatList(id: String($0), name: "name " + String($0)) }
}

func getMessagesMock() -> [Message] {
    return (0...3).map { Message(content: "message content \($0)") }
}
