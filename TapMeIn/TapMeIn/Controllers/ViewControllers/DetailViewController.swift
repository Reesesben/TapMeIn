//
//  DetailViewController.swift
//  TapMeIn
//
//  Created by Ben Erekson on 11/15/21.
//

import UIKit

class DetailViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var timeRemainingSlider: UISlider!
    @IBOutlet var timePicker: UIDatePicker!
    @IBOutlet var stopButton: UIButton!
    @IBOutlet var timeRemaingLabel: UILabel!
    @IBOutlet var startPauseButton: UIButton!
    
    //MARK: - Properties
    var timer: Timer?
    
    //MARK: - Views
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if !stopButton.isHidden {
            stopButton.layer.cornerRadius = (size.height * 0.15) / 2
        }
        startPauseButton.layer.cornerRadius = (size.height * 0.15) / 2
    }
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        if let timer = timer {
            stopButton.layer.cornerRadius = stopButton.layer.bounds.height / 2
            timeRemainingSlider.maximumValue = Float(timer.duration)
            timeRemainingSlider.minimumValue = 0
            timeRemainingSlider.value = Float(timer.elapsedTime)
            timeRemaingLabel.text = "\(timer.duration - timer.elapsedTime)"
            timePicker.isHidden = true
        } else {
            timePicker.isHidden = false
            timeRemaingLabel.isHidden = true
            timeRemainingSlider.isHidden = true
            stopButton.isHidden = true
        }
        startPauseButton.layer.cornerRadius = startPauseButton.layer.bounds.height / 2
    }
    
    //MARK: - Actions
    @IBAction func stopButtonTapped(_ sender: Any) {
        self.startPauseButton.setTitle("Start", for: .normal)
        self.startPauseButton.setTitleColor(.green, for: .normal)
        UIView.animate(withDuration: 0.2, delay: 0, options: [.transitionFlipFromRight]) {
            self.timePicker.isHidden = false
            self.timeRemaingLabel.isHidden = true
            self.timeRemainingSlider.isHidden = true
            self.stopButton.isHidden = true
        } completion: { _ in
            
        }
    }
    
    @IBAction func startPauseButtonTapped(_ sender: Any) {
        if startPauseButton.titleLabel?.text == "Start" {
            startPauseButton.setTitle("Pause", for: .normal)
            startPauseButton.setTitleColor(.orange, for: .normal)
            if timer == nil {
                UIView.animate(withDuration: 0.2, delay: 0, options: [.beginFromCurrentState]) {
                    self.timePicker.isHidden = true
                    self.timeRemaingLabel.isHidden = false
                    self.timeRemainingSlider.isHidden = false
                    self.stopButton.isHidden = false
                    self.stopButton.layer.cornerRadius = self.stopButton.layer.bounds.height / 2
                } completion: { _ in
                    
                }
            }
        } else {
            startPauseButton.setTitle("Start", for: .normal)
            startPauseButton.setTitleColor(.green, for: .normal)
        }
        
    }
}
