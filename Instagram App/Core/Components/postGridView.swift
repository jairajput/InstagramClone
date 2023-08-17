//
//  postGridView.swift
//  Instagram App
//
//  Created by Jai  on 18/08/23.
//

import SwiftUI

struct postGridView: View {
    var posts: [Post]
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible() , spacing: 1),
        .init(.flexible() , spacing: 1)
         
    ]
    private let imageDimensions:CGFloat = (UIScreen.main.bounds.width / 3) - 1

    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1){
            ForEach(posts) {
               post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimensions , height: imageDimensions)
                    .clipped()
            }
        }
        
    }
}

struct postGridView_Previews: PreviewProvider {
    static var previews: some View {
        postGridView(posts: Post.MOCK_POSTS)
    }
}
