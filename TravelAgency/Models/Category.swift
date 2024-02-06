//
//  Category.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import Foundation

struct Category: Hashable, Codable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let thumbnail: String
}

@Observable
class UserInterface {
   // var isLoading = true
    var places = [Category]()
    
    func fetchData()  {
        guard let url = URL(string: "https://travel.letsbuildthatapp.com/travel_discovery/category?name=art") else { return}
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _,
            error in guard let data = data, error == nil else{
                return
            }
            
            do {
                let jao = try JSONDecoder().decode([Category].self, from: data)
                DispatchQueue.main.async {
                    self?.places = jao
                }
                
            }
            
            catch {
                print ("error")
            }
        }
            task.resume()
    }}
//DispatchQueue.main.asyncAfter(deadline: .now() + 1) { self.isLoading = false
  //  self.places = [1,2,3,4,5,6]
