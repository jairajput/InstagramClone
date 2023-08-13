//
//  ProfileView.swift
//  Instagram App
//
//  Created by Jai  on 31/07/23.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible() , spacing: 1),
        .init(.flexible() , spacing: 1)
         
    ]
    var body: some View {
//        NavigationStack {
            ScrollView{
                //header
                VStack(spacing : 10){
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
                
              //post grid view
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0...15 ,id: \.self) {
                        index in
                        Image("Superman")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
                
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
//}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
