//
//  Video.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/16/21.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    
    static let topTen = [
        Video(imageName: "demtCommunityBaking",
              title: "DEMT making a difference in the community",
              description: "",
              viewCount: 370222,
              uploadDate: "",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 239150,
              uploadDate: "",
              url: URL(string: "https://youtu.be/aiXvvL1wNUc")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 162897,
              uploadDate: "",
              url: URL(string: "https://youtu.be/FtO5QT2D_H8")!),
              
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 119115,
              uploadDate: "",
              url: URL(string: "https://youtu.be/DBWu6TnhLeY")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 112213,
              uploadDate: "",
              url: URL(string: "https://youtu.be/Y0qCWQDRWDw")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 106021,
              uploadDate: "",
              url: URL(string: "https://youtu.be/jZ_BzV0DA58")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 92292,
              uploadDate: "",
              url: URL(string: "https://youtu.be/00o8oBjhdhk")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 87569,
              uploadDate: "",
              url: URL(string: "https://youtu.be/T1v_E0yuVBw")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 76224,
              uploadDate: "",
              url: URL(string: "https://youtu.be/MMoJiZZWoCA")!),
        
        Video(imageName: "",
              title: "",
              description: "",
              viewCount: 54024,
              uploadDate: "",
              url: URL(string: "https://youtu.be/HXoVSbwWUIk")!)
    ]
}

