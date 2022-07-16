//
//  Reminder+EKReminder.swift
//  Today
//
//  Created by Arad Radfar on 7/16/22.
//

import Foundation
import EventKit

extension Reminder {
    init(with ekreminder: EKReminder) throws {
        guard let dueDate = ekreminder.alarms?.first?.absoluteDate else {
            throw TodayError.reminnderHasNoDueDate
        }
        id = ekreminder.calendarItemIdentifier
        title = ekreminder.title
        self.dueDate = dueDate
        notes = ekreminder.notes
        isComplete = ekreminder.isCompleted
    }
}
