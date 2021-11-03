//
//  PlantCategory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

enum PlantCategory: String, CaseIterable {


    case Houseplants = "houseplant"
    case Succulents = "succulent"
    case Herbs = "herb"

    func getImageName(for category: PlantCategory) -> String {
        var name: String

        switch category {
        case .Houseplants:
            name = "leaf.fill"
        case .Herbs:
            name = "ladybug.fill"
        case .Succulents:
            name = "sun.max.fill"
        }

        return name
    }
}
