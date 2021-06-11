//
//  User.swift
//  ToDo_Firebase
//
//  Created by Sergey on 6/9/21.
//

import Foundation
import Firebase

struct User {
    
    // уникальный идентификатор пользователя
    let uid: String
    let email: String
    
    init(user: FirebaseAuth.User) {
        self.uid = user.uid
        self.email = user.email!
    }
}
