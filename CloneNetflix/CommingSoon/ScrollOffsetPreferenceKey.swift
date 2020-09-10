//
//  ScrollOffsetPreferenceKey.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/09/10.
//

import Foundation
import SwiftUI

struct ScrollOffsetPreferenceKey: PreferenceKey {
    typealias Value = [CGFloat]
    
    static var defaultValue: [CGFloat] = [0]
    
    static func reduce(value: inout [CGFloat], nextValue: () -> [CGFloat]) {
        value.append(contentsOf: nextValue())
    }
}
