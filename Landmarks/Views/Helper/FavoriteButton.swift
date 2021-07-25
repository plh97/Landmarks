//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by peng liheng on 27/6/21.
//

import Foundation
import SwiftUI


struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }){
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
        
    }
}

struct FavoriteButton_Preview: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
