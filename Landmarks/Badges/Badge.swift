//
//  Badge.swift
//  Landmarks
//
//  Created by Peng Li Heng(金融壹账通海外业务中心科技与研发团队开发组)(PENGLIHENG163) on 24/7/21.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { i in
            RotatedBadgeSymbol(angle: .degrees(Double(i)/Double(Badge.rotationCount)) * 360.0)
        }
        .opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in

                badgeSymbols
                    .scaleEffect(1/4,anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3/4) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
