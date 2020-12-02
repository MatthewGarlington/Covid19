//
//  ContentView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 11/21/20.
//

import SwiftUI

struct ContentView: View {
  
    var totalData: CovUSTotal
    

    var body: some View {
            TabView {
              
                CountryDetailView2(data: [])
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Detail")
                    }
                RecentView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("All Countries")
                    }
                StateDataView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("All State")
                    }
                MapContainerView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Map")
                    }
              
                
               
            }
        }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(totalData: testCovUSTotal )
    }
}
