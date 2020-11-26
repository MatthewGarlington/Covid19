//
//  StateCombineTwo.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/7/20.
//

import SwiftUI
import Foundation

struct StateCombineTwo: View {
    var body: some View {
    

        let headers = [
            "x-rapidapi-host": "covid19-data.p.rapidapi.com",
            "x-rapidapi-key": "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://covid19-data.p.rapidapi.com/us")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
            }
        })

        dataTask.resume()
    }
}

struct StateCombineTwo_Previews: PreviewProvider {
    static var previews: some View {
        StateCombineTwo()
    }
}
