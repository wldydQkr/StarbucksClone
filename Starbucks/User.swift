//
//  User.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/17.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "박지용", account: "www.www")
}
