//
//  File.swift
//  TapMeIn
//
//  Created by Ben Erekson on 11/15/21.
//

import Foundation

class Timer {
    let startTime: Date
    let timeLeft: Double
    
    init(startTime: Date, timeLeft: Double) {
        self.startTime = startTime
        self.timeLeft = timeLeft
    }
}
