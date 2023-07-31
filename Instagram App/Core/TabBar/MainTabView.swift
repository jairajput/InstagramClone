//
//  MainTabView.swift
//  Instagram App
//
//  Created by Jai  on 31/07/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem
                    {
                        Image(systemName :"house")
                    }
            
            Text("Search")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notification")
                .tabItem{
                    Image(systemName: "heart")
                }
            
            Text("Profile")
                .tabItem{
                    Image(systemName: "person")
                }
            
        }
        .accentColor(.black)
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
