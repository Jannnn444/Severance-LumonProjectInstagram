//
//  Response.swift
//  Instagram
//
//  Created by yucian huang on 2024/3/5.
//

struct Response: Decodable {
    var userToken: String?
    var login: String?
    var errorCode: Int?
    var message: String?
    
    enum CodingKeys: String,CodingKey {
        case userToken = "User-Token"
        case login
        case errorCode = "error_code"
        case message
    }
}
