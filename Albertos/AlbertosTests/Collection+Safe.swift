//
//  Collection+Safe.swift
//  AlbertosTests
//
//  Created by 조영민 on 4/15/25.
//

import Foundation

extension Collection {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
