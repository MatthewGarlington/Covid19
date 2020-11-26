//
//  Model.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import Foundation

struct TotalStateData {
    
    let total: Int
    let positive: Int
    let hospitalized: Int
    let death: Int
    let recovered: Int
    
    var fatalityRate: Double {
        
        return (100.00 * Double(death)) / Double(positive)
    }
    var recoveredRate: Double {
        
        return (100.00 * Double(recovered)) / Double(positive)
    }
}


struct TotalData {
    
    let active: Int
    let deaths: Int
    let tested: Int
    let confirmed: Int
    let newdeaths: Int
    let recovered: Int
    let newconfirmed: Int
 
}

struct CountryData {
    
    let country: String
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    let longitude: Double
    let latitude: Double
    
    
    var fatalityRate: Double {
        
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    var recoveredRate: Double {
        
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

struct StateData {
    
    let countrycode: String
    let country: String
    let state: String
    let latitude: Double
    let longitude: Double
    let confirmed: Int
    let deaths: Int
}
struct Value {
    
    let countrycode: String
    let country: String
    let state: String
    let latitude: Double
    let longitude: Double
    let confirmed: Int
    let deaths: Int
}

struct FinalData {
    
    var negative: Int
    var lastUpdateEt: String
    var recovered: Int
    var state: String
    var death: Int
    var date: Int
    var positive: Int
    var deathIncrease: Int
    var onVentilatorCurrently: Int
    let pending: Int
    

}
struct HistoricStateData {
    
    let state: String
    let lastUpdateEt: Int
    let total: Int
    let death: Int
    let deathIncrease: Int
    let hospitalizedCurrently: Int
    let inIcuCurrently: Int
    let positive: Int
    
    
    
}
struct CovUSTotal {
    
    let code: String
    let confirmed: Int
    let recovered: Int
    let critical: Int
    let deaths: Int
    let lastUpdate: String

    
    
}

 
    
    
    










let testTotalStateData = TotalStateData(total: 200, positive: 200, hospitalized: 200, death: 200, recovered: 200)

let testFinalData = FinalData(negative: 200, lastUpdateEt: "10-1", recovered: 100, state: "MD", death: 200, date: 200, positive: 200, deathIncrease: 200, onVentilatorCurrently: 200, pending: 200)

let testTotalData = TotalData(active: 200, deaths: 200 , tested: 200, confirmed: 200, newdeaths: 200, recovered: 200, newconfirmed: 200)

let testCountryData = CountryData(country: "USA", confirmed: 500, critical: 300, deaths: 200, recovered: 100, longitude: 0.0, latitude: 0.0)
    
let testStateData = StateData(countrycode: "US", country: "United States of America", state: "Maryland", latitude: 0.0, longitude: 0.0, confirmed: 200, deaths: 200)
let testValueData = Value(countrycode: "US", country: "United States of America", state: "Maryland", latitude: 0.0, longitude: 0.0, confirmed: 200, deaths: 200)
let testHistoricStateData = HistoricStateData(state: "MD", lastUpdateEt: 100, total: 200, death: 300, deathIncrease: 100, hospitalizedCurrently: 200, inIcuCurrently: 200, positive: 400)
let testCovUSTotal = CovUSTotal(code: "US", confirmed: 200, recovered: 200, critical: 200, deaths: 200, lastUpdate: "200")


