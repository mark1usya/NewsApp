

import SwiftUI

struct GradientAvatarView: View{
    var body: some View{
        GeometryReader{ _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground),.clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: sizeConstant.avatarHeight / 4)
            .offset(y: -sizeConstant.avatarHeight / 4)
        }
    }
    
}


