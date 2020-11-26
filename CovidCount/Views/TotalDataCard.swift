//
//  TotalDataCard.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    
    var body: some View {
        
      
            VStack {
                Text(self.number)
                    .font(.subheadline)
                    .padding(15)
                    .foregroundColor(self.color)
                   
                    
                
                
                
                Text(self.name)
                    .font(.headline)
                    .padding(5)
                    .foregroundColor(self.color)
            }// End of Vstack
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .frame(width: 400, height: 100, alignment: .center)
            .background(Color("Color-1").opacity(0.2))
            .cornerRadius(20)
            
        }// End of Geometry reader
        
 
    }


struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
