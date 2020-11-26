//
//  CountryDetailView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI

struct CountryDetailView: View {
    var countryData: CountryData
    
    
    var body: some View {
        
        VStack {
        VStack{
            CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed")
            CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
            CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
            CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Death %", color: .red)
            CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: .blue)
            CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovered %", color: .blue)
            
            
        }
        .background(Color("Color1").opacity(0.2))
        .cornerRadius(8)
        .padding()
            
            Spacer()
        
}
        .padding(.top, 50)
        .navigationTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
