//
//  profileHeaderView.swift
//  Instagram App
//
//  Created by Jai  on 18/08/23.
//

import SwiftUI

struct profileHeaderView: View {
    let user : User
    var body: some View {
            //pic and stats
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80 ,height: 80)
                    .clipShape(Circle())
                
                Spacer()
                HStack(spacing:8){
                    
                    UserStatView(value: 12, title: "Post")
                    UserStatView(value: 100, title: "Followers")
                    UserStatView(value: 12, title: "Following")
                    
                }
                
            }
            .padding(.horizontal)
            //name & bio
            VStack(alignment: .leading , spacing: 4){
                if let fullname = user.fullName{
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio{
                    
                    Text(bio)
                        .font(.footnote)
                }
                                    
                
            }
            .frame(maxWidth: .infinity , alignment: .leading)
            .padding(.horizontal)
            
            Button {
                
            }
              label:{
                  Text("Edit Profile")
                      .font(.subheadline)
                      .fontWeight(.semibold)
                      .frame(width: 360 , height: 32)
                      .foregroundColor(.black)
                      .overlay(RoundedRectangle(cornerRadius: 6) .stroke(Color.gray, lineWidth: 1))
            
        }
            
            Divider()
        }
    }


struct profileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        profileHeaderView(user: User.MOCK_USERS[0])
    }
}
