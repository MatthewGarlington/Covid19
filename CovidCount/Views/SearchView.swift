//
//  SearchView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    
    var body: some View {
        
        
        HStack {
            TextField("Country...", text: $searchText)
            padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}

