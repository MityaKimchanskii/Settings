//
//  SettingController.swift
//  Settings
//
//  Created by Mitya Kim on 1/18/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

class SettingController {
    
    static let settings: [Setting] = {
        let music = Setting (name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        return [music, appStore, iBooks]
    }()
    
    static func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
