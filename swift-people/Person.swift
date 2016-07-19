//
//  Person.swift
//  swift-people
//
//  Created by Cenker Demir on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills:[String] = []
    var qualifiedTutor: Bool {
        return self.skills.count >= 4
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name:"John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday()-> String {
        let name = self.name.uppercaseString
        if self.ageInYears == nil {
            return "HAPPY BIRTHDAY, \(name)!!!"
        }
        else {
            var ordinal: String = ""
            if var ageInYears = self.ageInYears {
                ageInYears += 1
                self.ageInYears = ageInYears
                ordinal = ageInYears.ordinal()
                return "HAPPY \(ageInYears)\(ordinal.uppercaseString) BIRTHDAY, \(name)!!!"
            }
            return ""
        }
    }
    
    func learnASkill(skill: String) {
        var skillsSet = Set<String>()
        for existingSkill in self.skills{
            skillsSet.insert(existingSkill)
        }
        skillsSet.insert(skill)
        self.skills = Array(skillsSet)
    }
    
    func learnSkillBash() {
        self.learnASkill("bash")
    }
    
    func learnSkillXcode() {
        self.learnASkill("Xcode")
    }
    
    func learnSkillObjectiveC() {
        self.learnASkill("Objective-C")
    }
    
    func learnSkillSwift() {
        self.learnASkill("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        self.learnASkill("Interface Builder")
    }
    
    
}