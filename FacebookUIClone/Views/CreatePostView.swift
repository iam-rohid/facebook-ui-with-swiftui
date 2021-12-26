//
//  CreatePostView.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import SwiftUI

struct CreatePostView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Image("avatar1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                HStack{
                    Text("What's on your mind?")
                        .font(.body)
                        .foregroundColor(Color(uiColor: .secondaryLabel))
                    Spacer()
                }
            }.padding(.vertical)
            
            
            
            Rectangle()
                .fill(Color(uiColor: .secondarySystemBackground))
                .frame(height: 1)
                .frame(maxWidth: .infinity)
            
            HStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image(systemName: "video.fill")
                            .foregroundColor(.red)
                        Text("Live")
                            .foregroundColor(Color(uiColor: .secondaryLabel))
                        Spacer()
                    }.padding(.vertical, 12)
                }
                
                Rectangle()
                    .fill(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 1, height: 32)
                
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image(systemName: "photo.on.rectangle.angled")
                            .foregroundColor(.green)
                        Text("Photo")
                            .foregroundColor(Color(uiColor: .secondaryLabel))
                        Spacer()
                    }.padding(.vertical, 12)
                }
                
                Rectangle()
                    .fill(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 1, height: 32)
                
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image(systemName: "video.fill.badge.plus")
                            .foregroundColor(.purple)
                        Text("Room")
                            .foregroundColor(Color(uiColor: .secondaryLabel))
                        Spacer()
                    }.padding(.vertical, 12)
                }
            }
        }
        .padding(.horizontal)
        .background(Color(uiColor: .systemBackground))
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
            .previewLayout(.sizeThatFits)
    }
}
