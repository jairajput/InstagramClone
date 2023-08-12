//
//  User.swift
//  Instagram App
//
//  Created by Jai  on 11/08/23.
//

import Foundation

struct User: Identifiable,Codable{
    let id: String
    var username: String
 
    var profileImageUrl : String?
    var fullName: String?
    var bio : String?
    let email :String
    
}
extension User{
    static var MOCK_USERs:[User] = [
        .init(id: NSUUID().uuidString, username:"batman", profileImageUrl:"Batman" ,fullName:"Batman" ,bio:"Gotham City " ,email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username:"batman", profileImageUrl:"Batman" ,fullName:"Batman" ,bio:"Gotham City " ,email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username:"batman", profileImageUrl:"Batman" ,fullName:"Batman" ,bio:"Gotham City " ,email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username:"batman", profileImageUrl:"Batman" ,fullName:"Batman" ,bio:"Gotham City " ,email: "batman@gmail.com")



    ]
    
}
