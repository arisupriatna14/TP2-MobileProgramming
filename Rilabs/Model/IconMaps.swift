//
//  IconMaps.swift
//  Rilabs
//
//  Created by Ari Supriatna on 22/04/24.
//

import Foundation

struct IconMaps: Identifiable {
    var id = UUID().uuidString
    let imageSystem: String
}

extension IconMaps {
    static var stubs: [IconMaps] {
        return [
            .init(imageSystem: "figure.walk"),
            .init(imageSystem: "figure.walk.diamond"),
            .init(imageSystem: "figure.wave.circle"),
            .init(imageSystem: "car"),
            .init(imageSystem: "bus.fill"),
            .init(imageSystem: "tram"),
            .init(imageSystem: "bicycle.circle"),
            .init(imageSystem: "fuelpump.fill"),
            .init(imageSystem: "airplane.circle"),
            .init(imageSystem: "airplane.departure"),
            .init(imageSystem: "bolt.car"),
            .init(imageSystem: "ferry")
        ]
    }
}
