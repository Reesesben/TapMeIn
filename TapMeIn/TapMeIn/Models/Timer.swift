//
//  File.swift
//  TapMeIn
//
//  Created by Ben Erekson on 11/15/21.
//

import Foundation

class Timer {
    let startTime: Date
    let elapsedTime: Double
    let duration: Double
    
    init(startTime: Date, elapsedTime: Double, duration: Double) {
        self.startTime = startTime
        self.elapsedTime = elapsedTime
        self.duration = duration
    }
}
