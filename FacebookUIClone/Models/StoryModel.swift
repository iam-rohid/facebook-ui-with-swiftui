//
//  StoryModel.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import Foundation

struct StoryModel: Identifiable {
    let id: String = UUID().uuidString
    let author: UserModel
    let image: String
    

    static let stories: [StoryModel] = [
        StoryModel(author: UserModel.user1, image: "post1"),
        StoryModel(author: UserModel.user2, image: "post2"),
        StoryModel(author: UserModel.user3, image: "post3"),
        StoryModel(author: UserModel.user2, image: "post4"),
        StoryModel(author: UserModel.user3, image: "post5"),
        StoryModel(author: UserModel.user1, image: "post6"),
        StoryModel(author: UserModel.user2, image: "post7")
    ]
}
