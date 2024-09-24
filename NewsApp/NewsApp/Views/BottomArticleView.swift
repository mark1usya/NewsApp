
import SwiftUI

struct BottomArticleView: View {
    let article: Article
    var body: some View {
        VStack{
            
            if let url = article.urlToImage, let imageURL = URL(string: url){
                AsyncImage(url: imageURL){
                    phase in if let image = phase.image{
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .cornerRadius(10)
                    } }
            }
            else{
                ZStack{
                    Rectangle()
                        .frame(height: 150)
                        .foregroundStyle(.secondary)
                        .opacity(0.3)
                        .cornerRadius(10)
                    Image(systemName: "photo"
                    )
                    .resizable()
                    .foregroundColor(.secondary)
                    .scaledToFit()
                    .frame(height: 50)
                }
            }
            
            
            
            
            VStack(alignment:.leading) {
                Text(article.title)
                    .titleFont()
            }
            Spacer()
            Text(article.publishedAt.convertDate())
                .descriptionFont()
            
        }
        .frame(width: 120, height: 240)
        .background(.background)
        .cornerRadius(10)
    }
}

