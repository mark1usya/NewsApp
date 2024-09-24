

import Foundation

@MainActor
final class ViewModel:ObservableObject{
    
    @Published var topNews: [Article] = []
    @Published var bottomNews: [Article] = []
    
    
    init() {
        fetchTopNews()
        fetchBottomNews()
    }
    
    func fetchTopNews() {
       
        Task{
            do{
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstats.topURLNews)
                topNews = articles.articles
                print("did fetch1")
            }
            catch{
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
    
    func fetchBottomNews() {
        Task{
            do{
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstats.bottomURLNews)
                bottomNews = articles.articles
                print("did fetch2")
            }
            catch{
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
}
