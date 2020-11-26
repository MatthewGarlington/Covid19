//
//  CountryDataRowView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    
    var body: some View {
        
        
        
        HStack {
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 60, alignment: .leading)
                
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
                .font(.subheadline)
                .frame(height: 60)
                .padding(.leading, 5)
            Spacer()
            Text(countryData.deaths.formatNumber())
                .frame(width: 60,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
                .padding(.leading, 5)
            Spacer()
            Text(countryData.recovered.formatNumber())
                .frame(width: 70,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.green)
                .padding(.trailing, 5)
            Spacer()
         }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
