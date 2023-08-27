//
//  ChatList.swift
//  randomChat
//
//  Created by 양주원 on 2023/08/26.
//

import Foundation

// Channel.swift

struct ChatList {
    var id: String?
    let name: String
    
    init(id: String? = nil, name: String) {
        self.id = id
        self.name = name
    }
}

extension ChatList: Comparable {
    static func == (lhs: ChatList, rhs: ChatList) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func < (lhs: ChatList, rhs: ChatList) -> Bool {
        return lhs.name < rhs.name
    }
}
