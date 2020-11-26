////
////  UIContentView.swift
////  CovidCount
////
////  Created by Matthew Garlington on 7/7/20.
////

import Foundation
import SwiftUI
import Combine




//
//public class MovieFetcher: ObservableObject {
//
//    @Published var movies = [Movie]()
//
//    init(){
//        loaddata()
//    }
//
//
//    func loaddata () {
//        let semaphore = DispatchSemaphore (value: 0)
//
//    var request = URLRequest(url: URL(string: "https://covidtracking.com/api/states")!,timeoutInterval: Double.infinity)
//    request.httpMethod = "GET"
//
//    let task = URLSession.shared.dataTask(with: request) { data, response, error in
//      guard let data = data else {
//        print(String(describing: error))
//        return
//      }
//
//      print(String(data: data, encoding: .utf8)!)
//      semaphore.signal()
//    }
//
//    task.resume()
//    semaphore.wait()
//   // print(loaddata)
//
//    }
//
//
//
//
//class Movie: Codable, Identifiable {
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(state, forKey: .state)
//
//    }
//
//
//
//
//
//    public var hash: Int
//    public var negative:Int
//    public var hospitalizedCurrently:Int
//    public var onVentilatorCurrently:Int
//    public var inIcuCurrently:Int
//    public var negativeRegularScore:Int
//    public var lastUpdateEt:String
//    public var recovered:Int
//    public var state:String
//    public var totalTestsViral:Int
//    public var negativeScore:Int
//    public var death:Int
//    public var score:Int
//    public var pending:Int
//    public var dataQualityGrade: String
//    public var positiveTestsViral:Int
//    public var negativeIncrease: Int
//    public var hospitalizedIncrease:Int
//    public var deathIncrease:Int
//    public var totalTestResultsIncrease: Int
//    public var dateChecked:String
//    public var total: Int
//    public var date:Int
//    public var dateModified: String
//    public var onVentilatorCumulative:Int
//    public var inIcuCumulative:Int
//
//}
//
//    enum CodingKeys: String, CodingKey {
//
//
//        case hash = "hash"
//        case negative = "negative"
//        case hospitalizedCurrently = "hospitalizedCurrently"
//        case onVentilatorCurrently = "onVentilatorCurrently"
//        case inIcuCurrently = "inIcuCurrently"
//        case negativeRegularScore = "negativeRegularScore"
//        case lastUpdateEt = "lastUpdateEt"
//        case recovered = "recovered"
//        case state = "state"
//        case totalTestsViral = "totalTestsViral"
//        case negativeScore = "negativeScore"
//        case death = "death"
//        case score = "score"
//        case pending = "pending"
//        case dataQualityGrade = "dataQualityGrade"
//        case positiveTestsViral = "positiveTestsViral"
//        case negativeIncrease = "negativeIncrease"
//        case hospitalizedIncrease = "hospitalizedIncrease"
//        case deathIncrease = "deathIncrease"
//        case totalTestResultsIncrease = "totalTestResultsIncrease"
//        case dateChecked = "dateChecked"
//        case total = "total"
//        case date = "date"
//        case dateModified = "dateModified"
//        case onVentilatorCumulative = "onVentilatorCumulative"
//        case inIcuCumulative = "inIcuCumulative"
//        }
//}
//
//
//struct FetchView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        FetchView()
//    }
//}
