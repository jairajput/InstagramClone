//
//  Post.swift
//  Instagram App
//
//  Created by Jai  on 13/08/23.
//

import Foundation
struct Post : Identifiable, Hashable , Codable{
    let id : String
    let ownerUid: String
    let caption: String
    var like :Int
    let imageUrl:String
    let timestamp :Date
    let user : User?
    
}
extension Post {
    static var MOCK_POSTS:[Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: " Weeb Developer", like: 1000, imageUrl: "spiderman", timestamp:Date(), user: User.MOCK_USERS[3]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Bat Coin", like: 1003, imageUrl: "Batman", timestamp: Date(), user:  User.MOCK_USERS[0]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString,caption: "Ios Developer", like: 4000, imageUrl: "jai2", timestamp: Date(), user:  User.MOCK_USERS[1]),
        
        .init(id: NSUUID().uuidString, ownerUid:NSUUID().uuidString,caption: "Alien ", like: 2345, imageUrl: "Superman", timestamp: Date(), user:  User.MOCK_USERS[2])
    
    ]
    
}
