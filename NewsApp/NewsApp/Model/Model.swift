//
//  Model.swift
//  NewsApp
//
//  Created by Mark Pashukevich on 11.09.24.
//

import Foundation


// MARK: - Welcome
struct News: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
   
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
}




//
//struct Source: Codable {
//    let id: ID
//    let name: Name
//}
//
//enum ID: String, Codable {
//    case techcrunch = "techcrunch"
//}
//
//enum Name: String, Codable {
//    case techCrunch = "TechCrunch"
//}
