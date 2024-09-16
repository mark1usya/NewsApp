//
//  Extention + Text.swift
//  NewsApp
//
//  Created by Mark Pashukevich on 15.09.24.
//

import Foundation
import SwiftUI

extension Text {
    func titleFont() -> some View{
        self
            .foregroundStyle(.primary)
            .font(.system(size: 16, weight: .bold, design: .rounded))
            .opacity(0.8)
        
    }
    func descriptionFont() -> some View{
        self
            .foregroundStyle(.primary)
            .font(.system(size: 14, weight: .bold, design: .rounded))
            .opacity(0.8)
        
    }
}
