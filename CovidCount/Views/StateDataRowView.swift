//
//  StateDataRowView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/6/20.
//
import SwiftUI

struct StateDataRowView: View {
    
    
    var finalData: FinalData
   
    
    
    var body: some View {
        
        
        
        HStack {
            
            Text(finalData.state)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 60, alignment: .leading)
            Spacer()
            Text(finalData.positive.formatNumber())
                .font(.subheadline)
                .frame(height: 60)
                .padding(.leading, 5)
            Spacer()
            Text(finalData.death.formatNumber())
                .frame(width: 60,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
                .padding(.leading, 5)
            Spacer()
            Text(finalData.deathIncrease.formatNumber())
                .frame(width: 70,height: 40, alignment: .center)
                .font(.subheadline)
                .foregroundColor(.red)
                .padding(.trailing, 5)
            Spacer()
           
         }
    }
}

struct StateDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        StateDataRowView(finalData: testFinalData)
    }
}
