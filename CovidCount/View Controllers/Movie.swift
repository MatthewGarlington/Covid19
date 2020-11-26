//
//  Movie.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/8/20.
//

struct Movie: Codable, Identifiable {
   
    
    
    public var hash: Int
    public var negative:Int
    public var hospitalizedCurrently:Int
    public var onVentilatorCurrently:Int
    public var inIcuCurrently:Int
    public var negativeRegularScore:Int
    public var lastUpdateEt:String
    public var recovered:Int
    public var state:String
    public var totalTestsViral:Int
    public var negativeScore:Int
    public var death:Int
    public var score:Int
    public var pending:Int
    public var dataQualityGrade: String
    public var positiveTestsViral:Int
    public var negativeIncrease: Int
    public var hospitalizedIncrease:Int
    public var deathIncrease:Int
    public var totalTestResultsIncrease: Int
    public var dateChecked:String
    public var total: Int
    public var date:Int
    public var dateModified: String
    public var onVentilatorCumulative:Int
    public var inIcuCumulative:Int
    
    

    enum CodingKeys: String, CodingKey {
        
        
        case hash = "hash"
        case negative = "negative"
        case hospitalizedCurrently = "hospitalizedCurrently"
        case onVentilatorCurrently = "onVentilatorCurrently"
        case inIcuCurrently = "inIcuCurrently"
        case negativeRegularScore = "negativeRegularScore"
        case lastUpdateEt = "lastUpdateEt"
        case recovered = "recovered"
        case state = "state"
        case totalTestsViral = "totalTestsViral"
        case negativeScore = "negativeScore"
        case death = "death"
        case score = "score"
        case pending = "pending"
        case dataQualityGrade = "dataQualityGrade"
        case positiveTestsViral = "positiveTestsViral"
        case negativeIncrease = "negativeIncrease"
        case hospitalizedIncrease = "hospitalizedIncrease"
        case deathIncrease = "deathIncrease"
        case totalTestResultsIncrease = "totalTestResultsIncrease"
        case dateChecked = "dateChecked"
        case total = "total"
        case date = "date"
        case dateModified = "dateModified"
        case onVentilatorCumulative = "onVentilatorCumulative"
        case inIcuCumulative = "inIcuCumulative"
        }
}

