//
//  Models.swift
//  Albertos
//
//  Created by 조영민 on 4/15/25.
//

import Foundation

struct MenuItem {
    let category: String
}

struct MenuSection {
    
}

func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    guard menu.isEmpty == false else { return [] }
    return [MenuSection()]
}
