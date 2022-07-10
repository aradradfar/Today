//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Arad Radfar on 7/7/22.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
