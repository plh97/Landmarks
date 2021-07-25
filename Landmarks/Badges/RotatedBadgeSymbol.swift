//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Peng Li Heng(金融壹账通海外业务中心科技与研发团队开发组)(PENGLIHENG163) on 24/7/21.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
