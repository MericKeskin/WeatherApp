//
//  Service.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 13.09.2022.
//

import Foundation

class Service {
    
    static func getForecastData(query: String, completion: @escaping(Result<[DataModel], Error>, Result<WeatherDataModel, Error>) -> Void ) {
        guard let url = URL(string: Constants.baseURL + "city=\(query)&" + "key=\(Constants.apiKey)&" + "days=\(Constants.forWeek)") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let response = try JSONDecoder().decode(WeatherDataModel.self, from: data)
                completion(.success(response.data ?? []), .success(response))
            } catch let e {
                completion(.failure(e), .failure(e))
            }
        }.resume()
    }
}
