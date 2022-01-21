//
//  PlantCategory.swift
//  Plantiverse
//
//  Created by Kate Owens on 11/3/21.
//

import Foundation

class PlantCategory: ObservableObject {
    @Published var name: CategoryInfo
    var imageName: String
  
    init(name: CategoryInfo, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}

enum CategoryInfo: String, CaseIterable, Identifiable {
    
    var id: String {
        return self.rawValue
    }
    
    case Houseplants = "houseplant"
    case Succulents = "succulent"
    case Herbs = "herb"
    case NA = "Unspecified"

    func getImageName(for category: CategoryInfo) -> String {
        var name: String

        switch category {
        case .Houseplants:
            name = "leaf.fill"
        case .Herbs:
            name = "ladybug.fill"
        case .Succulents:
            name = "sun.max.fill"
        case .NA:
            name = ""
        }
        return name
    }
}

