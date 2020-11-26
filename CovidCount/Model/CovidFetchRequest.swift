//
//  CovidFetchResponse.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import Foundation
import SwiftyJSON
import Alamofire


class CovidFetchRequest: ObservableObject {
    
    @Published var allFinal: [FinalData] = []
    @Published var allStatesInfo: [StateData] = []
    @Published var allStates: [StateData] = []
    @Published var stateData: StateData = testStateData
    @Published var allCountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    @Published var allTotal: [TotalData] = []
    @Published var finalData: FinalData = testFinalData
    @Published var totalStateData: TotalStateData = testTotalStateData
    @Published var allHistoricStateData: [HistoricStateData] = []
    @Published var allUS : [CovUSTotal] = []
    @Published var totalUS: CovUSTotal = testCovUSTotal
    
    
    let headers1: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
        "x-rapidapi-key": "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"
    ]
  
    let headers2: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-usa-data-by-zt.p.rapidapi.com",
        "x-rapidapi-key": "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"
    ]
    let headers3: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
        "x-rapidapi-key": "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"
    ]
    init() {
        
      
        getCurrentStateTotal()
        getFinalData()
        getAllStates()
        getAllCountries()
        getTotalData()
  
    }
        
       
    
    func getAllCountries() {
        
        
        AF.request("https://covid-19-data.p.rapidapi.com/country/all?format=json", headers: headers1).responseJSON { response in
           
            let result = response.value
            var allCount: [CountryData] = []
            if result != nil {
                
                    let dataDictionary = result as! [Dictionary<String, Any>]
                
                for countryData in dataDictionary {
                    
                   
                  
                    
                    let country = countryData["country"] as? String ?? "error"
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let confirmed = countryData["confirmed"] as? Int ?? 0
                    let recovered = countryData["recovered"] as? Int ?? 0
                    let deaths = countryData["deaths"] as? Int ?? 0
                    let critical = countryData["critical"] as? Int ?? 0
                    
               
                    let countryObject = CountryData(country: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: longitude, latitude: latitude)
                    
                    allCount.append(countryObject)
                }
            }
            self.allCountries = allCount.sorted(by:  { $0.confirmed > $1.confirmed})
            
    }
    
}
    func getAllStates() {
        let headers: HTTPHeaders = [
            "x-rapidapi-host": "covid19-data.p.rapidapi.com",
            "x-rapidapi-key": "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"
        ]

        
        
        AF.request("https://covid19-data.p.rapidapi.com/us", headers: headers).responseJSON { response in
           
            let result = response.data
           
            if result != nil {
                
                let json = JSON(result!)
                
               
                
                   
                
              
                    
                let countrycode = json[0]["countrycode"].stringValue
                let country = json[0]["country"].stringValue
                let state = json[0]["state"].stringValue
                let latitude = json[0]["latitude"].doubleValue
                let longitude = json[0]["longitude"].doubleValue
                let confirmed = json[0]["confirmed"].intValue
                let deaths = json[0]["deaths"].intValue
                    
                    
            self.stateData = StateData(countrycode: countrycode, country: country, state: state, latitude: latitude, longitude: longitude, confirmed: confirmed, deaths: deaths)
                
               
            } else {
                self.stateData = testStateData
                    
            }
        }
            
    }
    

        
func getFinalData() {
    
  
    
    AF.request("https://covidtracking.com/api/v1/states/current.json").responseJSON { response in
        
        let result = response.value
        var allFin: [FinalData] = []
        if result != nil {
            
                let dataDictionary = result as! [Dictionary<String, Any>]
            
            for finalData in dataDictionary {
                
               
              
                
                let negative = finalData["negative"] as? Int ?? 0
                let lastUpdateEt = finalData["lastUpdateEt"] as? String ?? "error"
                let recovered = finalData["recovered"] as? Int ?? 0
                let state = finalData["state"] as? String ?? "error"
                let death = finalData["death"] as? Int ?? 0
                let date = finalData["date"] as? Int ?? 0
                let positive = finalData["positive"] as? Int ?? 0
                let deathIncrease = finalData["deathIncrease"] as? Int ?? 0
                let onVentilatorCurrently = finalData["onVentilatorCurrently"] as? Int ?? 0
                let pending = finalData["pending"] as? Int ?? 0
                
           
                let finalObject = FinalData(negative: negative, lastUpdateEt: lastUpdateEt, recovered: recovered, state: state, death: death, date: date, positive: positive, deathIncrease: deathIncrease, onVentilatorCurrently: onVentilatorCurrently, pending: pending)
                
                allFin.append(finalObject)
            }
        }
        self.allFinal = allFin.sorted(by:  { $0.deathIncrease > $1.deathIncrease})
        
}

}
    func getTotalData() {



        AF.request("https://covid-19-data.p.rapidapi.com/country/us", headers: headers3).responseJSON { response in

           
               
                let result = response.data
               
                if result != nil {
                    
                    let json = JSON(result!)
                    
                  
                //   print(json)
                       
                    
                  
                        
                    let code = json[0]["code"].stringValue
                    let confirmed = json[0]["confirmed"].intValue
                    let recovered = json[0]["recovered"].intValue
                    let critical = json[0]["critical"].intValue
                    let deaths = json[0]["deaths"].intValue
                    let lastUpdate = json[0]["lastUpdate"].stringValue
                   
                        
                        
                    self.totalUS = CovUSTotal(code: code, confirmed: confirmed, recovered: recovered, critical: critical, deaths: deaths, lastUpdate: lastUpdate)
                    
                   
                } else {
                    self.totalUS = testCovUSTotal
                        
                }
            }
                
        }
        
    func getCurrentStateTotal() {



        AF.request("https://covid-19-data.p.rapidapi.com/country/code?code=us", headers: headers3).responseJSON { response in

            let result = response.value
          
            var allU: [CovUSTotal] = []
            if result != nil {

                    let dataDictionary = result as! [Dictionary<String, Any>]

                for covidUSData in dataDictionary {



                    let code = covidUSData["code"] as? String ?? "Hello"
                    let confirmed = covidUSData["confirmed"] as? Int ?? 0
                    let recovered = covidUSData["recovered"] as? Int ?? 0
                    let critical = covidUSData["critical"] as? Int ?? 0
                    let deaths = covidUSData["deaths"] as? Int ?? 0
                    let lastUpdate = covidUSData["lastUpdate"] as? String ?? "Hello"



                    let USObject = CovUSTotal(code: code, confirmed: confirmed, recovered: recovered, critical: critical, deaths: deaths, lastUpdate: lastUpdate)

                    allU.append(USObject)
                }
            }
            self.allUS = allU.sorted(by:  { $0.confirmed > $1.confirmed})

    }

}
    
}

            


