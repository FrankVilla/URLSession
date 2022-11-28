//
//  ViewModel.swift
//  URLSession
//
//  Created by KOVIGROUP on 05/11/2022.
//

import Foundation

final class ViewModel {
    
    func executeAPI() {
        let urlSession = URLSession.shared
        let url = URL(string: "http://itunes.apple.com/search/media=music&dentity=song&term=tiesto")
        
        urlSession.dataTask(with: url!) { data, response, error in
            print("Data \(String(describing: data))")
            print("Response \(String(describing: response))")
            print("Error \(String(describing: error))")
            
            if let data = data {
                let json = try?  JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
            }
            
        }.resume()
    }
}
