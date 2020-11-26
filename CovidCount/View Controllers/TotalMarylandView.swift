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



            NavigationView {




                VStack{








                    List{
                        ForEach(covidFetch.allUS.filter {
                            self.searchText.isEmpty ? true : $0.code.lowercased().contains(self.searchText.lowercased())
                        }, id: \.code) { totalData in


                            NavigationLink(
                                destination:

                                SnapShotView(totalData: totalData)) {

                                Text("United States Update")
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

struct TotalMarylandView_Previews: PreviewProvider {
    static var previews: some View {
        TotalMarylandView()
    }
}
