//
//  StateJSON.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/7/20.
//

import Foundation

//"recovered":524855
//"list":[57 items
//0:{7 items
//"countrycode":"US"
//"country":"United States of America"
//"state":"South Carolina"
//"latitude":"34.22333378"
//"longitude":"-82.46170658"
//"confirmed":15228
//"deaths":568



struct StateJSON: Decodable {
    var list: [StateListEntry]
}

struct StateListEntry: Decodable {
    
    var countrycode: String
    var country: String
    var state: String
    var latitude: Double
    var longitude: Double
    var confirmed: Int
    var deaths: Int
}
