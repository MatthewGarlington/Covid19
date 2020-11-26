//
//  ChartView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/11/20.
//

import SwiftUI
import

        struct ChartView: View {
            let bars: [Bar]
            let max: Double

            init(bars: [Bar]) {
                self.bars = bars
                self.max = bars.map { $0.value }.max() ?? 0
            }

            var body: some View {
                GeometryReader { geometry in
                    HStack(alignment: .bottom, spacing: 0) {
                        ForEach(self.bars) { bar in
                            Capsule()
                                .fill(bar.legend.color)
                                .frame(height: CGFloat(bar.value) / CGFloat(self.max) * geometry.size.height)
                                .overlay(Rectangle().stroke(Color.white))
                                .accessibility(label: Text(bar.label))
                                .accessibility(value: Text(bar.legend.label))
                        }
                    }
                }
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
