//
//  SearchViewModel.swift
//  Instagram App
//
//  Created by Jai  on 21/08/23.
//

import Foundation
import Firebase
class SearchViewModel: ObservableObject{
    @Published var users = [User]()
    
    init() {
        Task{ try await fetchAllUsers() }
    }
    @MainActor
    func fetchAllUsers() async throws{
        self.users = try await UserService.fetchAllUsers()
    } 
}
