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
    @IBOutlet var startPauseButton: UIButton!
    
    //MARK: - Lifecycles
    override func viewDidLayoutSubviews() {
        stopButton.layer.cornerRadius = stopButton.layer.bounds.height / 2
        startPauseButton.layer.cornerRadius = startPauseButton.layer.bounds.height / 2
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
