//
//  TimerCollectionViewCell.swift
//  TapMeIn
//
//  Created by Ben Erekson on 11/15/21.
//

import UIKit

class TimerCollectionViewCell: UICollectionViewCell {
    //MARK: - IBOutlets
    @IBOutlet var timeRemainingLable: UILabel!
    @IBOutlet var pauseResumeButton: UIButton!
    @IBOutlet var stopButton: UIButton!
    
    //MARK: - Lifecycles
    override func awakeFromNib() {
        super.awakeFromNib()
        timeRemainingLable.layer.cornerRadius = timeRemainingLable.layer.bounds.height / 2
        pauseResumeButton.layer.cornerRadius = pauseResumeButton.layer.bounds.height / 2
        stopButton.layer.cornerRadius = stopButton.layer.bounds.height / 2
    }
    
    //MARK: - Actions
    @IBAction func stopButtonTapped(_ sender: Any) {
        print("Stop pressed")
    }
    
    @IBAction func pauseResumeButtonTapped(_ sender: Any) {
        print("Pause/Resume Pressed")
    }
    
}
