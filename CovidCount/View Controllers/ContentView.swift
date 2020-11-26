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
                RecentView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Recent")
                    }

                StateDataView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("State")
                    }
                MapContainerView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Map")
                    }
                TotalMarylandView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Content")
                    }
            }
        }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(totalData: testCovUSTotal)
    }
}
