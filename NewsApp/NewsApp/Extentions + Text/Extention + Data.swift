//
//  Extention + Data.swift
//  NewsApp
//
//  Created by Mark Pashukevich on 15.09.24.
//

import Foundation
extension Date{
    
    func convertDate() -> String{
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}

