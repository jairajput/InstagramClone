//
//  FeedCell.swift
//  Instagram App
//
//  Created by Jai  on 01/08/23.
//

import SwiftUI

struct FeedCell: View {
    let post:Post
    var body: some View {
        VStack{
            // Image And User Name
            HStack{
                if let user = post.user {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50 , height: 50)
                        .clipShape(Circle())
                    
                    Text(user.username )
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                }
                Spacer()
                
            }
            .padding(.leading , 8)
            //Post Image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action Button
            HStack(spacing:16){
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    print("Comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    print("Share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()

            }
            .padding(.leading , 8)
            .padding(.top , 4 )
            .foregroundColor(.black)
             
            //likes Label
            Text("\(post.like) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding(.leading , 8)
                .padding(.top, 1)
            
            //caption Label
            
            HStack{
                Text("\(post.user?.username ?? "") ") .fontWeight(.semibold) +
                Text(post.caption)
                
            }
            .frame(maxWidth: .infinity , alignment: .leading)
            .padding(.leading, 10)
            .font(.footnote)
            .padding(.top ,1)
            
            Text(" 1h ago")
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding(.leading , 8)
                .padding(.top, 1)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[3])
    }
}
