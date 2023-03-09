//
//  ViewController.swift
//  StoryTellingApp
//
//  Created by Muhammad Taimoor Hassan on 08/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet  weak var qLbl: UILabel!
    @IBOutlet  weak var choiceOneBtn: UIButton!
    @IBOutlet  weak var choiceTwoBtn: UIButton!
    
    var storyBrain = StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
     }
    
    @IBAction func choiceMadeBtn(_ sender: UIButton) {
        
            
            storyBrain.nextStory(userChoice: sender.currentTitle!)
            
            updateUI()
         
        }
        
        func updateUI() {
            qLbl.text = storyBrain.getStoryTitle()
            choiceOneBtn.setTitle(storyBrain.getChoice1(), for: .normal)
            choiceTwoBtn.setTitle(storyBrain.getChoice2(), for: .normal)
        }
        
    }
