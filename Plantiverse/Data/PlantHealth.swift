//
//  PlantHealth.swift
//  Plantiverse
//
//  Created by Kate Owens on 12/20/21.
//

import Foundation
import SwiftUI

enum PlantHealth: String, CaseIterable, Identifiable {
    
    var id: String {
         return self.rawValue
     }
    
    case Excellent = "Excellent"
    case Good = "Good"
    case Meh = "Meh"
    case Bad = "Bad"
    case NA = "Unspecified"
    case NeedsUpdate = "Needs update"
}
