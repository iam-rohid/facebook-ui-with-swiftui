//
//  UserModel.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import Foundation

struct UserModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let avatar: String
    
    
    static let user1 = UserModel(name: "User 1", avatar: "avatar1")
    static let user2 = UserModel(name: "User 2", avatar: "avatar2")
    static let user3 = UserModel(name: "User 3", avatar: "avatar3")
    static let user4 = UserModel(name: "User 4", avatar: "avatar4")
}

