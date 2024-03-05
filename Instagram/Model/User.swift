//
//  Login.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

struct User: Encodable {
    var user: SignIn
}

struct SignIn: Encodable {
    var login: String
    var password: String
}
