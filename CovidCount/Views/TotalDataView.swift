//
//  TotalDataView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI

struct TotalDataView: View {
    @ObservedObject var covidFetch = CovidFetchRequest()
    


    var totalData: CovUSTotal
  
    
    var body: some View {
      
        
        
        HStack {
            Text(totalData.confirmed.formatNumber())
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 60, alignment: .leading)
                
            Spacer()
            
            Text(totalData.critical.formatNumber())
                .font(.subheadline)
                .frame(height: 60)
                .padding(.leading, 5)
            Spacer()
            Text(totalData.deaths.formatNumber())
                .frame(width: 60,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
                .padding(.leading, 5)
            Spacer()
            Text(totalData.recovered.formatNumber())
                .frame(width: 70,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.green)
                .padding(.trailing, 5)
            Spacer()
            Text(totalData.lastUpdate)
                .frame(width: 70,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.green)
                .padding(.trailing, 5)
            Spacer()
             
         }
    }
}
    


struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testCovUSTotal)
    }
}
