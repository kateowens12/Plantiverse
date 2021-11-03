//
//  PlantModel.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

import SwiftUI

struct PlantModel: Identifiable {
    var name: String
    @State var needsHealthUpdate: Bool
    var task: PlantTask?
    var category: PlantCategory
    var id = UUID()
}
