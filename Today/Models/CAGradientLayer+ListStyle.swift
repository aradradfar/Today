//
//  CAGradientLayer+ListStyle.swift
//  Today
//
//  Created by Arad Radfar on 7/16/22.
//

import UIKit

extension CAGradientLayer {
    static func gradientLayer(for style: ReminderListStyle, in frame: CGRect) -> Self {
        let layer = Self()
        layer.colors = colors(for: style)
        layer.frame = frame
        return layer
    }

    static private func colors(for style: ReminderListStyle) -> [CGColor] {
        let beginColor: UIColor
        let endColor: UIColor

        switch style {
        case .today:
            beginColor = .todayGradientTodayBegin
            endColor = .todayGradientTodayEnd
        case .future:
            beginColor = .todayGradientFutureBegin
            endColor = .todayGradientFutureEnd
        case .all:
            beginColor = .todayGradientAllBegin
            endColor = .todayGradientAllEnd
        }
        return [beginColor.cgColor, endColor.cgColor]
    }
}
