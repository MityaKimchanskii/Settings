//
//  SettingsTableViewController.swift
//  Settings
//
//  Created by Mitya Kim on 1/18/22.
//  Copyright © 2022 Karl Pfister. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.settings[indexPath.row]
        cell.delegate = self
        cell.updateViews(with: setting)

        return cell
    }
}

extension SettingsTableViewController: SettingCellDelegate {
    func settingSwitchToggled(for cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.settings[indexPath.row]
        SettingController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
