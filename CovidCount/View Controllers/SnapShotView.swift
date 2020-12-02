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
        Image("covid19")
            .cornerRadius(30.0)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
          
       Spacer()
        Text("United States Latest")
            .font(.title)
            
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
