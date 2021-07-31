//
//  PageView.swift
//  Landmarks
//
//  Created by Peng Li Heng(金融壹账通海外业务中心科技与研发团队开发组)(PENGLIHENG163) on 31/7/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 1

    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

