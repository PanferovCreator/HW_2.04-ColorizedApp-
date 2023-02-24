//
//  MainViewController.swift
//  HW_2.04(ColorizedApp)
//
//  Created by Dmitriy Panferov on 23/02/23.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func updateColor(for backgroundColor: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.colorViewFromMain = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func updateColor(for backgroundColor: UIColor) {
        view.backgroundColor = backgroundColor
    }
}
