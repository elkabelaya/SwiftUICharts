//
//  SimpleBarChart.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import SwiftUI
import Charts

struct SimpleBarChart: View {
    let chartItems: [ChartItem]
    var body: some View {
        Chart {
            ForEach(chartItems) { item in
                BarMark(
                    x: .value("Shape Type", item.type),
                    y: .value("Total Count", item.count)
                )
            }
        }.frame(height: 100)
    }
}

struct SimpleBarChart_Previews: PreviewProvider {
    static var previews: some View {
        SimpleBarChart(chartItems: ChartViewModel().chartItems)
    }
}
