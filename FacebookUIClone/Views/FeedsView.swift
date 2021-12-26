//
//  FeedView.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import SwiftUI

struct FeedsView: View {
    var body: some View {
        VStack(spacing: 0){
            // Header
            HeaderView()
            
            // Body
            ScrollView (.vertical, showsIndicators: false){
                VStack{
                    // Create post section
                    CreatePostView()
                    
                    // Story
                    StoryListView()
                    
                    // Posts
                    ForEach(PostModel.posts){post in
                        PostsCardView(post: post)
                    }
                    
                }.frame(maxWidth:.infinity)
            }
            .background(Color(uiColor: .secondarySystemBackground))
        }.navigationBarHidden(true)
//            .ignoresSafeArea(.all, edges: .top)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FeedsView()
        }
    }
}

