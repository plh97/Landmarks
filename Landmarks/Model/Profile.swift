//
//  Profile.swift
//  Landmarks
//
//  Created by Peng Li Heng(金融壹账通海外业务中心科技与研发团队开发组)(PENGLIHENG163) on 25/7/21.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var globalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {self.rawValue}
    }
}
