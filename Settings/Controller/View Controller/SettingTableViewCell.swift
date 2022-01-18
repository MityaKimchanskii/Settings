//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Mitya Kim on 1/18/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: AnyObject {
    func settingSwitchToggled(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    weak var delegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting) {
        settingLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        
        if setting.isOn == true {
            backgroundColor = .blue
        } else {
            backgroundColor = .white
        }
    }
    
    
    
    // MARK: - IBActions
    @IBAction func switchTapped(_ sender: Any) {
        delegate?.settingSwitchToggled(for: self)
    }
    
}
