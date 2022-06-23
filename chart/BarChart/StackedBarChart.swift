//
//  StackedBarChart.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import SwiftUI
import Charts

struct StackedBarChart: View {
    let chartItems: [ChartItem]
    var body: some View {
        Chart {
            ForEach(chartItems) { item in
                BarMark(
                    x: .value("Shape Type", item.type),
                    y: .value("Total Count", item.count)
                )
                .foregroundStyle(by: .value("Shape Color", item.color))
            }
        }.frame(height: 100)
    }
}

struct StackedBarChart_Previews: PreviewProvider {
    static var previews: some View {
        StackedBarChart(chartItems: ChartViewModel().chartItems)
    }
}
