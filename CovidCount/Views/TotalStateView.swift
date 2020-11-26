//
//  TotalStateView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/9/20.
//

import SwiftUI

struct TotalStateView: View {
    var totalStateData: TotalStateData
    
    var body: some View {
        VStack {
            
            HStack {
                
                TotalDataCard(number: totalStateData.total.formatNumber(), name: "Total", color: .blue)
                    .padding(.all, 5)
                TotalDataCard(number: totalStateData.positive.formatNumber(), name: "Positive", color: .red)
                    .padding(.all, 5)
                TotalDataCard(number: totalStateData.death.formatNumber(), name: "Deaths", color: .red)
                    .padding(.all, 5)
               
                
              
            }.padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
          
            HStack {
                    
                   
                TotalDataCard(number: totalStateData.hospitalized.formatNumber(), name: "Hospital", color: .red)
                    .padding(.all, 5)
                TotalDataCard(number: String(format: "%.2f", totalStateData.fatalityRate), name: "Death %", color: .red)
                    .padding(.all, 5)
                TotalDataCard(number: totalStateData.recovered.formatNumber(), name: "Recovered", color: .blue)
                    .padding(.all, 5)
             
                
                
            }.padding(.all, 10)
            
                
          
        
        } .frame(height: 200)
        .padding(.bottom, 20)
}
}

struct TotalStateView_Previews: PreviewProvider {
    static var previews: some View {
        TotalStateView(totalStateData: testTotalStateData)
    }
}
