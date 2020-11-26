//
//  Extension.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import Foundation

extension Int {
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
    func formatDate() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = "/"
        formatter.numberStyle = .currencyISOCode
        return formatter.string(from: NSNumber(value: self))!
    }
}

