//
//  AnalyticsManager.swift
//  Instagram
//
//  Created by Afraz Siddiqui on 3/20/21.
//

import Foundation
import FirebaseAnalytics

final class AnalyticsManager {
    static let shared = AnalyticsManager()

    private init() {}

    func logEvent() {
        Analytics.logEvent("", parameters: [:])
    }
}
