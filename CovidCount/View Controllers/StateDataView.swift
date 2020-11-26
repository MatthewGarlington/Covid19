//
//  StateDataView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/6/20.
//

import SwiftUI

struct StateDataView: View {
        @ObservedObject var covidFetch = CovidFetchRequest()
        @State var searchText = ""
        @State var isSearchVisible = false
        
        var body: some View {
        
           
           
            NavigationView {
          
            
                
                
                VStack{
                    
                    
                        
                    
                   
                   
                    StateListHeaderView()
                    
                    List{
                        ForEach(covidFetch.allFinal.filter {
                            self.searchText.isEmpty ? true : $0.state.lowercased().contains(self.searchText.lowercased())
                        }, id: \.state) { finalData in
                            
                            
                            NavigationLink(
                                destination:
                                    
                                StateDetailView(finalData: finalData)) {
                            
                                StateDataRowView(finalData: finalData)
                            }
                        }
                    }
                    }
            }
            .navigationBarTitle("State Data", displayMode: .inline)
            .navigationBarItems(trailing:
            
                                    Button (action: {
                                        
                                        self.isSearchVisible.toggle()
                                        
                                        if !self.isSearchVisible {
                                            self.searchText = ""
                                        }
                                        
                                    },label: {
                                        Image(systemName: "magnifyingglass")
                                    }))
        }// End of Navigation View
    }
    
                        
struct StateDataView_Previews: PreviewProvider {
    static var previews: some View {
        StateDataView()
    }
}
