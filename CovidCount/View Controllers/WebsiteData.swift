////
////  WebsiteData.swift
////  CovidCount
////
//////  Created by Matthew Garlington on 7/7/20.
//////
////
import Foundation
import SwiftUI
import Combine
import Alamofire
import SwiftyJSON


//
//struct Response: Codable {
//
//    var results: [data]
//
//}
//
//struct data: Codable {
//    var negative:Int
//    var hospitalizedCurrently:Int
//    var onVentilatorCurrently:Int
//    var inIcuCurrently:Int
//    var negativeRegularScore:Int
//    var lastUpdateEt:Date
//    var recovered:Int
//    var state:String
//    var totalTestsViral:Int
//    var negativeScore:Int
//    var death:Int
//    var score:Int
//    var pending:Int
//    var dataQualityGrade: String
//    var positiveTestsViral:Int
//    var negativeIncrease: Int
//    var hospitalizedIncrease:Int
//    var deathIncrease:Int
//    var totalTestResultsIncrease: Int
//    var dateChecked:String
//    var total: Int
//    var date:Int
//    var dateModified: String
//    var onVentilatorCumulative:Int
//    var inIcuCumulative:Int
//
//
////}
//
//        func loaddata () {
//            let semaphore = DispatchSemaphore (value: 0)
//
//        var request = URLRequest(url: URL(string: "https://covidtracking.com/api/states")!,timeoutInterval: Double.infinity)
//        request.httpMethod = "GET"
//
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//          guard let data = data else {
//            print(String(describing: error))
//            return
//          }
//
//          print(String(data: data, encoding: .utf8)!)
//          semaphore.signal()
//        }
//
//        task.resume()
//        semaphore.wait()
//        print(loaddata)
//
//            }
//
//
//
//
//
