//
//  SnapShotView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 11/24/20.
//

import SwiftUI

struct SnapShotView: View {
    @ObservedObject var covidFetch = CovidFetchRequest()
    var totalData: CovUSTotal
    var body: some View {
        
      
        
    
        VStack{
            
            
          
               
        Text("United States Latest")
            .font(.title)
            
            TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed.", color: .red)
                .padding()
 
            TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .red)
                .padding(15)
       
          
            VStack {
            TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
                .padding(15)
           
            TotalDataCard(number: totalData.lastUpdate, name: "Last update", color: .red)
                .padding(15)
            }
           
            Spacer()
        
        
        
     
            
 
         
}
    }
    }
    


struct SnapShotView_Previews: PreviewProvider {
    static var previews: some View {
        SnapShotView(totalData: testCovUSTotal)
    }
}
