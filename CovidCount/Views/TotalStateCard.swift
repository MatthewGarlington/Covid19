//
//  TotalStateCard.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/12/20.
//

import SwiftUI

struct TotalStateCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    
    var body: some View {
        
        GeometryReader { geometry in
           
            VStack {
                Text(self.number)
                    .font(.subheadline)
                    .padding(8)
                    .foregroundColor(self.color)
                    
                
                
                
                Text(self.name)
                    .font(.body)
                    .padding(8)
                    .foregroundColor(self.color)
                    
            }// End of Vstack
            .frame(width: 120, height: 60, alignment: .center)
            .padding(.all, 40)
            .background(Color("Color1").opacity(0.2))
            .cornerRadius(15.0)
         
        }// End of Geometry reader
        
    }
}

struct TotalStateCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalStateCard()
    }
}
