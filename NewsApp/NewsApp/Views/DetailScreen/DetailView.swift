

import SwiftUI

struct DetailView: View {
    let article: Article
    var body: some View {
        
        ZStack(alignment:.topLeading){
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article:article)
                VStack(alignment:.leading,spacing: 20){
                    Text(article.title)
                        .titleFont()
                    if let description = article.description{
                        Text(description)
                            .descriptionFont()
                    }
                    
                    Text(article.publishedAt.convertDate())
                        .descriptionFont()
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradientAvatarView())
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            BackButtonView()
                .padding(.leading)
        }
    }
}


#Preview {
    DetailView(
        article: Article(
            title: "Example",
            description: "helloworld",
            url: "",
            urlToImage: "https://picsum.photos/200/300",
            publishedAt: Date()
        )
    )
}

