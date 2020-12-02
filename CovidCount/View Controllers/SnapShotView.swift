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
          
       Spacer()
       Spacer()
        Text("United States")
            .font(.title)
            .bold()
            
            TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed.", color: .black)
                .padding()
 
            TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .black)
                .padding(15)
       
          
            TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .black)
                .padding(15)
            
           Spacer()
            }
        .background(Color(.white).blur(radius: 4.0))
        
            
        .edgesIgnoringSafeArea(.all)
        
        
        
     
            
 
         
        }
       
    }
    
    


struct SnapShotView_Previews: PreviewProvider {
    static var previews: some View {
        SnapShotView(totalData: testCovUSTotal)
    }
}
