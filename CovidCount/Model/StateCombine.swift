//
//  StateCombine.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/7/20.
//

import SwiftUI
import Alamofire

struct StateInfo: Decodable {
    var countrycode: String
    var country: String
    var state: String
    var latitude: Double
    var longitude: Double
    var confirmed: Int
    var deaths: Int
    
    static let `default` = StateInfo(countrycode: "US", country: "United States of America", state: "Maryland", latitude: 0.0, longitude: 0.0, confirmed: 200, deaths: 200)
}

struct StateCombine: View {
    

    
    var body: some View {
        Button("Fetch Data") {
            

            let url = URL(string: "https://covid19-data.p.rapidapi.com/us")
            self.fetch(url!)
        }
    }
    
    func fetch (_ url: URL) {
        URLSession.shared.dataTask(with: url) {data, response, error in
        
        if let error = error {
            print(StateInfo.default.state)
        }else if let data = data {
            
            let decoder = JSONDecoder()
            
            do {
                let user = try decoder.decode(StateInfo.self, from: data)
                print(StateInfo.default.confirmed)
            }catch {
                print(StateInfo.default.state)
            }
            
        }
    }.resume()
}
}
struct StateCombine_Previews: PreviewProvider {
    static var previews: some View {
        StateCombine()
    }
}
