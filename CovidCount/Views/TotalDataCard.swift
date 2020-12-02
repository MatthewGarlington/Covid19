//
//  TotalDataCard.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI


extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}
struct TotalDataCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    
    var body: some View {
        
      
            VStack {
                Text(self.number)
                    .font(.largeTitle)
                    .padding(10)
                    .foregroundColor(self.color)
                   
                    
                
                
                
                Text(self.name)
                    .font(.headline)
                    .padding(5)
                    .foregroundColor(self.color)
                
            }// End of Vstack
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .frame(width: 350, height: 100, alignment: .center)
            .background(Color(.tertiarySystemGroupedBackground).opacity(20.0))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
            
        }
    // End of Geometry reader
        
 
    }


struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
