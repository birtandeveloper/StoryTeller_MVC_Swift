//
//  ViewController.swift
//  Swift_MVVM_Project
//
//  Created by Mac Os X on 15.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var storyModel = StoryLogics()
    
    @IBOutlet weak var storyDescriptionLabel: UILabel!
    @IBOutlet weak var firstButtonLabel: UIButton!
    @IBOutlet weak var secondButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func clickButton(_ sender: UIButton) {       
        storyModel.nextStory(userAnswer: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyDescriptionLabel.text = storyModel.getStories()
        firstButtonLabel.setTitle(storyModel.getbutton1Label(), for: .normal)
        secondButtonLabel.setTitle(storyModel.getbutton2Label(), for: .normal)
    }
}

