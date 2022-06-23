//
//  AreaChartsView.swift
//  chart
//
//  Created by Elka Belaya on 23.06.2022.
//

import SwiftUI

struct AreaChartsView: View {
    let chartItems: [ChartItem]
    var body: some View {
        SimpleAreaChart(chartItems: chartItems)
            .frame(height: 100)
        Spacer()
    }
}

struct AreaChartsView_Previews: PreviewProvider {
    static var previews: some View {
        AreaChartsView(chartItems: ChartViewModel().chartItems)
    }
}
