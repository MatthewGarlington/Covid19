//
//  ContentViewII.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/8/20.
//
//

import SwiftUI

struct TimeSeries: Decodable {
    let Thailand: [DayData]
    let US: [DayData]
    let Italy: [DayData]
}

struct DayData: Decodable, Hashable {
    let date: String
    let confirmed, deaths, recovered: Int
}

class ChartViewModel: ObservableObject {
    
    @Published var dataSet = [DayData]()
    
    var max = 0
    
    init() {
        let urlString = "https://pomber.github.io/covid19/timeseries.json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            // checking errors
            
            guard let data = data else { return }
            
            do {
                let timeSeries = try JSONDecoder().decode(TimeSeries.self, from: data)
                
                DispatchQueue.main.async {
                    self.dataSet = timeSeries.US.filter { $0.deaths > 0 }
                    
                    self.max = self.dataSet.max(by: { (day1, day2) -> Bool in
                        return day2.deaths > day1.deaths
                        })?.deaths ?? 0
                }
                
//                timeSeries.US.forEach { (dayData) in
//                    print(dayData.date, dayData.deaths)
//                }
            } catch {
                print("JSON Decode failed", error)
            }
        }.resume()
    }
}

struct ContentViewII: View {
    
    @ObservedObject var vm = ChartViewModel()
    
    var body: some View {
        VStack {
            Text("Corona")
                .font(.system(size: 34, weight: .bold))
            Text("Total Deaths: \(vm.max)")
            
            if !vm.dataSet.isEmpty {
                ScrollView(.horizontal) {
                    HStack (alignment: .bottom, spacing: 4) {
                        ForEach(vm.dataSet, id: \.self) { day in
                            HStack {
                                Spacer()
                            }
                            .frame(width: 8, height: (CGFloat(day.deaths) / CGFloat(self.vm.max)) * 200)
                            .background(Color.red)
                        }
                    }
                }
            }
            
//            HStack {
//                // somehow insert the JSON
//                VStack {
//                    Spacer()
//                }
//                .frame(width: 10, height: 200)
//                .background(Color.red)
//
//                VStack {
//                    Spacer()
//                }
//                .frame(width: 10, height: 200)
//                .background(Color.red)
//
//                VStack {
//                    Spacer()
//                }
//                .frame(width: 10, height: 200)
//                .background(Color.red)
//
//                VStack {
//                    Spacer()
//                }
//                .frame(width: 10, height: 200)
//                .background(Color.red)
//            }
        }
    }
}



struct ContentViewII_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewII()
    }
}



