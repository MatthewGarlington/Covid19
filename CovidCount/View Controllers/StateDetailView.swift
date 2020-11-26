//
//  StateDetailView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/6/20.
//
//
import SwiftUI

struct StateDetailView: View {
    var finalData: FinalData
    

    @ObservedObject var covidFetch = CovidFetchRequest()
    
    
    var body: some View {
        
        NavigationView{
        
        VStack {
        VStack{
            
            StateDetailRow(number: finalData.state, name: "State Abv.")
            StateDetailRow(number: finalData.lastUpdateEt, name: "Last Updated Time")
            StateDetailRow(number: finalData.positive.formatNumber(), name: "Positive", color: .red)
            StateDetailRow(number: finalData.death.formatNumber(), name: "Deaths", color: .red)
            StateDetailRow(number: finalData.deathIncrease.formatNumber(), name: "Daily Death Increase", color: .red)
            StateDetailRow(number: finalData.onVentilatorCurrently.formatNumber(), name: "Currently on Ventilator", color: .red)
            StateDetailRow(number: finalData.negative.formatNumber(), name: "Negative", color: .blue)
            StateDetailRow(number: finalData.recovered.formatNumber(), name: "Recovered", color: .blue)
           
            
            
            
        }
        .background(Color("Color1").opacity(0.2))
        .cornerRadius(8)
        .padding()
            
    Spacer()
         
}
        
        .navigationTitle(finalData.state)
        .font(.title)
        .padding(.top,2)
    }
}
}

struct StateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailView(finalData: testFinalData)
    }
}
