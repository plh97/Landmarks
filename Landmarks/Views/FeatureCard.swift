//
//  FeatureCard.swift
//  Landmarks
//
//  Created by Peng Li Heng(金融壹账通海外业务中心科技与研发团队开发组)(PENGLIHENG163) on 31/7/21.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay(TextOverLay(landmark: landmark))
    }
}

struct TextOverLay: View {
    var landmark: Landmark
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center
        )
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading, content: {
            Rectangle().fill(gradient)
            VStack(alignment: .leading, content: {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            })
            .padding()
        })
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
