//
//  SearchView.swift
//  Instagram App
//
//  Created by Jai  on 02/08/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    LazyVStack(spacing: 12){
                        ForEach(User.MOCK_USERS) {
                            user in
                            NavigationLink(value: user) {
                                HStack{
                                    Image(user.profileImageUrl ?? "")
                                        .resizable()
                                        .scaledToFill()
                                        .clipShape(Circle())
                                        .frame(width: 40 , height: 40)
                                    VStack(alignment: .leading){
                                        Text(user.username)
                                            .fontWeight(.semibold)
                                        
                                        if let fullName = user.fullName{
                                            Text(user.fullName ?? "")
                                        }
                                    }
                                    .font(.footnote)
                                   Spacer()

                                }.foregroundColor(.black)
                                .padding(.horizontal)
                            }
                                
                            
                            
                        }
                    }
                    .padding(.top , 8)
                    .searchable(text: $searchText , prompt: "Search")
                }
                .navigationDestination(for: User.self, destination: { user in
                    ProfileView(user:user)
                    
                })
                .navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
