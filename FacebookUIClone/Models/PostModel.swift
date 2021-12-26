//
//  PostModel.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import Foundation

struct PostModel: Identifiable {
    let id: String = UUID().uuidString
    let author: UserModel
    let image: String
    

    static let posts: [PostModel] = [
        PostModel(author: UserModel.user1, image: "post1"),
        PostModel(author: UserModel.user1, image: "post6"),
        PostModel(author: UserModel.user2, image: "post2"),
        PostModel(author: UserModel.user3, image: "post5"),
        PostModel(author: UserModel.user2, image: "post4"),
        PostModel(author: UserModel.user2, image: "post7"),
        PostModel(author: UserModel.user3, image: "post3"),
    ]
}
