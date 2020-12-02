//
//  TotalMarylandView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 11/25/20.
//

import SwiftUI

struct TotalMarylandView: View {

        @ObservedObject var covidFetch = CovidFetchRequest()
        @State var searchText = ""
        @State var isSearchVisible = false

        var body: some View {









             
                        ForEach(covidFetch.allUS.filter {
                            self.searchText.isEmpty ? true : $0.code.lowercased().contains(self.searchText.lowercased())
                        }, id: \.code) { totalData in


                         
                                SnapShotView(totalData: totalData)
                        }.background(Color(.darkGray).blur(radius: 4.0))
                        
        }
                    }
                    
            
struct TotalMarylandView_Previews: PreviewProvider {
    static var previews: some View {
        TotalMarylandView()
    }
}
