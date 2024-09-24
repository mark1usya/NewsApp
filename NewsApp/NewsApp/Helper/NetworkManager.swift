
import Foundation
final class NetworkManager {
    //MARK: - Propreties
   static let shared = NetworkManager()
  private let decoder = JSONDecoder()
    //MARK: - Initialization
    private init(){
        
    decoder.dateDecodingStrategy = .iso8601
    }
    func getNews(urlString: String) async throws -> News {
      guard let url = URL(string: urlString) else{throw NetworkError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse}
        do{
            return try decoder.decode(News.self, from: data)
        }
        catch{
            throw NetworkError.invalidData
        }
    }
    
    
    
    enum NetworkError: String,Error {
        case invalidURL = "Invalid URL"
        case invalidResponse = "Invalid response to the server"
        case invalidData = "Data recived from the server is invalid"
        
    }
}
