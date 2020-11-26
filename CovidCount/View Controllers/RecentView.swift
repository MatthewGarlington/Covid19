//
//  RecentView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//



import SwiftUI
import FirebaseAuth


struct RecentView: View {
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    @State var isSearchVisible = false
    
    
    var body: some View {
    
       
       
        NavigationView {
      
        
            
            
            VStack{
                
                
                    
                
                ListHeaderView()
                   
                
                List{
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        
                        NavigationLink(
                            destination:
                                
                            CountryDetailView(countryData: countryData)) {
                        
                            CountryDataRowView(countryData: countryData)
                            
                            
                        }
                    }
                
                }
                }
                    
                
                
            }// End of VStack
       
            .navigationBarTitle("Recent Data", displayMode: .inline)
            .navigationBarItems(trailing:
            
                                    Button (action: {
                                        
                                        self.isSearchVisible.toggle()
                                        
                                        if !self.isSearchVisible {
                                            self.searchText = ""
                                        }
                                        
                                    },label: {
                                        Image(systemName: "magnifyingglass")
                                    })).background(Color("cardBackgroundGray"))
        }// End of Navigation View
    
    
    
    } 


struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
