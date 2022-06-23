//
//  SimboledLineChart.swift
//  chart
//
//  Created by Elka Belaya on 23.06.2022.
//

import SwiftUI
import Charts

struct SimboledLineChart: View {
    let dateItems: [DateItem]
    var body: some View {
        Chart {
            ForEach(dateItems) { item in
                LineMark(
                    x: .value("Date", item.date),
                    y: .value("Total Count", item.count)
                )
                .interpolationMethod(.cardinal)
                .symbol(Circle().strokeBorder())
                .symbolSize(30)
            }
        }
        
    }
}

struct SimboledLineChart_Previews: PreviewProvider {
    static var previews: some View {
        SimboledLineChart(dateItems: ChartViewModel().dateItems)
    }
}
