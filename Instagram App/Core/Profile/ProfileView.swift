//
//  ProfileView.swift
//  Instagram App
//
//  Created by Jai  on 31/07/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //header
            VStack(spacing : 10){
                //pic and stats
                
                
                HStack{
                    Image("Supermanflying")
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
                    Text("Henery Cavill")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    
                    Text("SuperMan")
                        .font(.footnote)
                                        
                    
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
            
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
