//
//  SettingsModel.swift
//  HornRoutines
//
//  Created by Alexander Burdiss on 5/16/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation

class settingsModel: ObservableObject {
    var difficulties = ["Short", "Medium", "Long"]
    
    @Published var selectedDifficulty: Int = UserDefaults.standard.integer(forKey: "Difficulty") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.selectedDifficulty, forKey: "Difficulty")
        }
    }
    
    @Published var longTonesToggle: Bool = UserDefaults.standard.bool(forKey: "LongTones") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.longTonesToggle, forKey: "LongTones")
        }
    }
    
    @Published var slowLipSlursToggle: Bool = UserDefaults.standard.bool(forKey: "SlowLipSlurs") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.slowLipSlursToggle, forKey: "SlowLipSlurs")
        }
    }
    
    @Published var fastLipSlursToggle: Bool = UserDefaults.standard.bool(forKey: "FastLipSlurs"){
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.fastLipSlursToggle, forKey: "FastLipSlurs")
        }
    }
    
    @Published var staticArticulationToggle: Bool = UserDefaults.standard.bool(forKey: "StaticArticulation") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.staticArticulationToggle, forKey: "StaticArticulation")
        }
    }
    
    @Published var variableArticulationToggle: Bool = UserDefaults.standard.bool(forKey: "VariableArticulation") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.variableArticulationToggle, forKey: "VariableArticulation")
        }
    }
    
    @Published var majorScalesToggle: Bool = UserDefaults.standard.bool(forKey: "MajorScales") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.majorScalesToggle, forKey: "MajorScales")
        }
    }
    
    @Published var highRangeToggle: Bool = UserDefaults.standard.bool(forKey: "HighRange") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.highRangeToggle, forKey: "HighRange")
        }
    }
    
    @Published var lowRangeToggle: Bool = UserDefaults.standard.bool(forKey: "LowRange") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.lowRangeToggle, forKey: "LowRange")
        }
    }
}
