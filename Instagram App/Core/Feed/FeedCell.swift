//
//  FeedCell.swift
//  Instagram App
//
//  Created by Jai  on 01/08/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // Image And User Name
            HStack{
                Image("Batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50 , height: 50)
                    .clipShape(Circle())
                
                Text("Batman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    Spacer()
                
            }
            .padding(.leading , 8)
            //Post Image
            Image("Batman")
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
            Text(" 100 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding(.leading , 8)
                .padding(.top, 1)
            
            //caption Label
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
