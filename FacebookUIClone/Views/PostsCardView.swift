//
//  PostsCard.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import SwiftUI

struct PostsCardView: View {
    let post: PostModel
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Image(post.author.avatar)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                    .clipped()
                VStack(alignment: .leading, spacing: 0){
                    Text(post.author.name)
                            .fontWeight(.medium)
                    Text("5min ago")
                            .font(.callout)
                }
                
                Spacer()
                
                Button(action: {}){
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(Color(uiColor: .label))
                        .frame(width: 48, height: 48, alignment: .center)
                        .clipShape(Circle())
                }
                
                
                
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            
            
            Image(post.image)
                .resizable()
                .scaledToFit()
            
            HStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.title3 )
                        Text("Like")
                            .font(.headline)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .foregroundColor(Color(uiColor: .secondaryLabel))
                    .padding(.vertical, 12)
                }
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image(systemName: "bubble.right.fill")
                            .font(.title3 )
                        Text("Comment")
                            .font(.headline)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .foregroundColor(Color(uiColor: .secondaryLabel))
                    .padding(.vertical, 12)
                }
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image(systemName: "square.and.arrow.up.fill")
                            .font(.title3 )
                        Text("Share")
                            .font(.headline)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .foregroundColor(Color(uiColor: .secondaryLabel))
                    .padding(.vertical, 12)
                }
            }
        }.background(Color(uiColor: .systemBackground))
    }
}

struct PostsCard_Previews: PreviewProvider {
    static var previews: some View {
        PostsCardView(post: PostModel.posts[0])
            .previewLayout(.sizeThatFits)
    }
}
