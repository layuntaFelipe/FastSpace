//
//  PlanetModel.swift
//  FastSpace
//
//  Created by Felipe Lobo on 27/05/21.
//

import SwiftUI

struct Planet: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let link: String
    let image: String
    let description: String
    let gallery: [String]
    let fact: [String]
    let shadow: String
}
