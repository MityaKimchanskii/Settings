//
//  Setting.swift
//  Settings
//
//  Created by Mitya Kim on 1/18/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//
import UIKit

class Setting {
    
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
