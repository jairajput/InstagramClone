//
//  User.swift
//  Instagram App
//
//  Created by Jai  on 11/08/23.
//

import Foundation

struct User: Identifiable,Hashable,Codable{
    let id: String
    var username: String
 
    var profileImageUrl : String?
    var fullName: String?
    var bio : String?
    let email :String
    
}
extension User{
    static var MOCK_USERS:[User] = [
        .init(id: NSUUID().uuidString, username:"batman", profileImageUrl:"Batman" ,fullName:"Bruce Wayne" ,bio:"Gotham City " ,email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username:"jai", profileImageUrl:"jai2" ,fullName:"Jai" ,bio:" Ios Developer " ,email: "jai@gmail.com"),
        .init(id: NSUUID().uuidString, username:"Superman", profileImageUrl:"Superman" ,fullName:"Clark Kent" ,bio:"Alien" ,email: "superman@gmail.com"),
        .init(id: NSUUID().uuidString, username:"spiderman", profileImageUrl:"spiderman" ,fullName:"Peter Parker" ,bio:"NewYork City" ,email: "spiderman@gmail.com")



    ]
    
}
