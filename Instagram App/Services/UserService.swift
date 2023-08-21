//
//  UserService.swift
//  Instagram App
//
//  Created by Jai  on 21/08/23.
//

import Foundation
import Firebase
struct UserService{
    @MainActor
static func fetchAllUsers() async throws -> [User] {
    
    let snapshot = try await Firestore.firestore().collection("users").getDocuments()
    
    
    
    return snapshot.documents.compactMap({try? $0.data(as:User.self)})
   
}
}
