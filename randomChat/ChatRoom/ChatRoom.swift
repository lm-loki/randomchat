//
//  Chatroom.swift
//  randomChat
//
//  Created by 양주원 on 2023/08/18.
//

import Foundation

struct ChatRoom {
    var id: String?
    let name: String
    
    init(id: String? = nil, name: String) {
        self.id = id
        self.name = name
    }
}

extension ChatRoom: Comparable {
    static func == (lhs: ChatRoom, rhs: ChatRoom) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func < (lhs: ChatRoom, rhs: ChatRoom) -> Bool {
        return lhs.name < rhs.name
    }
}
