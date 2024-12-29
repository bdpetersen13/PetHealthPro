//
//  User.swift
//  PetHealthPro
//
//  Created by Brandon Petersen on 12/26/24.
//

import Foundation
//import Firebase

struct User: Identifiable {
    let id: String
    let profilePhotoUrl: String
    let fullname: String
    let email: String
    
    //var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == self.id }
    
    init(dictionary: [String: Any]) {
        self.id = dictionary["uid"] as? String ?? ""
        self.profilePhotoUrl = dictionary["profilePhotoUrl"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
    }
    
    var description: String {
        return "User(id: \(id), profilePhotoUrl: \(profilePhotoUrl), fullname: \(fullname), email: \(email)"
    }
}
