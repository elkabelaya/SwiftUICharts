//
//  BarChartsView.swift
//  chart
//
//  Created by Elka Belaya on 23.06.2022.
//

import SwiftUI

struct BarChartsView: View {
    let chartItems: [ChartItem]
    var body: some View {
        SimpleBarChart(chartItems: chartItems)
            .frame(height: 100)
        Spacer()
        
        StackedBarChart(chartItems: chartItems)
            .frame(height: 100)
        Spacer()
        
        HorizontalBarChart(chartItems: chartItems)
            .frame(height: 200)
        Spacer()
    }
}

struct BarChartsView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartsView(chartItems: ChartViewModel().chartItems)
    }
}
