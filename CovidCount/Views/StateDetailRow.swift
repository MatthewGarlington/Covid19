//
//  StateDetailRow.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/6/20.
//
import SwiftUI

struct StateDetailRow: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    var body: some View {
        VStack {
            HStack {
            Text(self.name)
                .font(.body)
                .padding(5)
                

                Spacer()
            Text(self.number)
                .font(.subheadline)
                .padding(5)
                .foregroundColor(color)
       
                
            }
            Divider()
        }
        .padding(.leading)
        .padding(.trailing)
        
    }
}

struct StateDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailRow()
    }
}
