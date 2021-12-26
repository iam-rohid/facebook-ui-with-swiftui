//
//  StoryListView.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import SwiftUI


let storyWidth: CGFloat = 100
let storyHeight: CGFloat = 160


struct StoryListView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10){
                // Create story button
                CreateStroyButton()
                
                // Other stroy
                ForEach(StoryModel.stories) { story in
                    StoryButton(story: story)
                }
            }.padding()
        }
        .background(Color(uiColor: .systemBackground))
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
            .previewLayout(.sizeThatFits)
    }
}

struct CreateStroyButton: View {
    var body: some View {
        Button(action: {}){
            VStack{
                Image("avatar1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: storyWidth, height: storyWidth)
                ZStack{
                    Color.clear
                    
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .frame(width: 28, height: 28, alignment: .center)
                        .background(Color.accentColor)
                        .clipShape(Circle())
                        .offset(y: -34)
                    
                    Text("Create a\n Story")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(uiColor: .label))
                }
            }
            .frame(width: storyWidth, height: storyHeight)
            .background(Color(uiColor: .label).opacity(0.05))
            .cornerRadius(12)
            .clipped()
        }
    }
}


struct StoryButton: View {
    let story: StoryModel
    var body: some View {
        Button(action: {}){
            ZStack{
                Image(story.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 0) {
                    Image(story.author.avatar)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .clipped()
                    Spacer()
                        .frame(maxWidth: .infinity)
                    Text(story.author.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .padding(12)
                .frame(maxWidth: storyWidth)
                    
            }
            .frame(width: storyWidth, height: storyHeight)
            .cornerRadius(12)
            .clipped()
        }
    }
}
