//
//  HorizontalBarChart.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import SwiftUI
import Charts

struct HorizontalBarChart: View {
    let chartItems: [ChartItem]
    var body: some View {
        Chart {
            ForEach(chartItems) { item in
                BarMark(
                    x: .value("Total Count", item.count),
                    y: .value("Shape Type", item.type)
                )
                .foregroundStyle(by: .value("Shape Color", item.color))
            }
        }
    }
}

struct HorizontalBarChart_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalBarChart(chartItems: ChartViewModel().chartItems)
    }
}
