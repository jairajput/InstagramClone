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
                        ForEach(0 ... 15, id:\.self) {
                            user in
                                HStack{
                                    Image("Batman")
                                        .resizable()
                                        .scaledToFill()
                                        .clipShape(Circle())
                                        .frame(width: 40 , height: 40)
                                    VStack(alignment: .leading){
                                        Text("Batman")
                                            .fontWeight(.semibold)
                                        
                                        Text("Bruce Wayne")
                                    }
                                    .font(.footnote)
                                   Spacer()
                            }
                                .padding(.horizontal)
                            
                            
                        }
                    }
                    .padding(.top , 8)
                    .searchable(text: $searchText , prompt: "Search")
                }
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
