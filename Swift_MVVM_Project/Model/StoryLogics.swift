//
//  StoryLogics.swift
//  Swift_MVVM_Project
//
//  Created by Mac Os X on 15.10.2022.
//

import Foundation

struct StoryLogics {
    var storyNumber = 0
    let stories = [
        Story(
            storyDescription: "You are now alone in your house in the middle of the winter. While you were watching tv your door is knocked. When you open the door a man at the age of 30 asks for help to save his stuck car from the snowdrift. ", choice1: "I'll help you!", choice2: "Sorry! It is not possible...", choice1Destination: 2, choice2Destination: 1
        ),
        Story(
            storyDescription: "Staying at home is always safe but helping is always cool!",
            choice1: "Yes", choice2: "No Sorry!", choice1Destination: 2, choice2Destination: 3
        ),
        Story(
            storyDescription: "You took your shovel and started to clean the snow with the man. While you were cleaning the snow, a giant bear appeared in front of the car.",
            choice1: "Escape immediately to your Home!", choice2: "Stay with the man and fight with the bear", choice1Destination: 5, choice2Destination: 4
        ),
        Story(
            storyDescription: "You've saved your life but the man is Killed by the bear!",
            choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0
        ),
        Story(
            storyDescription: "You killed the bear with the man! You're a hero!",
            choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0
        ),
        Story(
            storyDescription: "Life is beautiful!",
            choice1: "The", choice2: "End", choice1Destination: 0, choice2Destination: 0
        ),
    ]
        
    func getbutton1Label()  -> String {
        return stories[storyNumber].choice1
    }
    
    func getbutton2Label() -> String {
        return stories[storyNumber].choice2
    }
    
    func getStories() -> String {
        return stories[storyNumber].storyDescription
    }
    
    mutating func nextStory(userAnswer: String) {
        if userAnswer == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
    }
}
