//
//  InstaModel.swift
//  InstagramStoriesApp
//
//  Created by Tejashree on 29/04/23.
//

import Foundation

struct UserDetails {
    var name: String = ""
    var imageUrl: String = ""
    var content: [Content] = []
    
    init(userDetails: [String: Any]) {
        name = userDetails["name"] as? String ?? ""
        imageUrl = userDetails["imageUrl"] as? String ?? ""
        let aContent = userDetails["content"] as? [[String : Any]] ?? []
        for element in aContent {
            content += [Content(element: element)]
        }
    }
}

struct Content {
    var type: String
    var url: String
    init(element: [String: Any]) {
        type = element["type"] as? String ?? ""
        url = element["url"] as? String ?? ""
    }
}
