//
//  ChartView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/11/20.

import SwiftUI

struct ChartView: View {
@ObservedObject var covidFetch = CovidFetchRequest()
@State private var pickerSelectedItem = 0
var totalData: TotalData

var body: some View {
ZStack {
Color(.orange).edgesIgnoringSafeArea(.all)
VStack {
Text("BAR CHART")
.font(.system(size: 28))
.fontWeight(.medium)
.foregroundColor(Color(.white))
Picker(selection: $pickerSelectedItem, label: Text("")) {
Text("Weekly").tag(0)
Text("Monthly").tag(1)
Text("Yearly").tag(2)
Text("Leap Year").tag(3)
Text("Weekend").tag(4)
}.pickerStyle(SegmentedPickerStyle())
.padding(.horizontal, 24)
HStack(spacing: 8) {
    
    BarView(value: CGFloat(totalData.deaths), week: "A")
    BarView(value: CGFloat(totalData.deaths), week: "A")
    BarView(value: CGFloat(totalData.deaths), week: "A")
    BarView(value: CGFloat(totalData.deaths), week: "A")
    BarView(value: CGFloat(totalData.deaths), week: "A")
    
    
    
    
    
}.padding(.top, 24)
.animation(.default)
       }
     }
  }
}
