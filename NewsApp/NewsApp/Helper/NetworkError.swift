//
//  NetworkError.swift
//  NewsApp
//
//  Created by Mark Pashukevich on 12.09.24.
//

import Foundation



enum NetworkError: String,Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response to the server"
    case invalidData = "Data recived from the server is invalid"
    
}

