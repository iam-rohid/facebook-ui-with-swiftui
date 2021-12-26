//
//  HeaderView.swift
//  FacebookUIClone
//
//  Created by Rohid on 27/12/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 20){
            Text("facebook")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            HeaderButton(action: {
                
            }, image: "magnifyingglass")
            HeaderButton(action: {
                
            }, image: "message.fill")
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(uiColor: .systemBackground))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}


struct HeaderButton: View {
    let action: () -> Void
    let image: String
    var body: some View {
        Button(action: action){
            Image(systemName: image)
                .foregroundColor(Color(uiColor: .label))
                .font(.title3)
                .frame(width: 48, height: 48, alignment: .center)
                .background(Color(uiColor: .secondarySystemBackground))
                .clipShape(Circle())
        }
    }
}
