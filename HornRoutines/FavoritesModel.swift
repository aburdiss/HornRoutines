//
//  FavoritesModel.swift
//  HornRoutines
//
//  Created by Alexander Burdiss on 5/16/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation

class FavoritesModel: ObservableObject {
    // the actual resorts the user has favorited
    private var images: [String]

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data
        self.images = UserDefaults.standard.stringArray(forKey: saveKey) ?? [String]()
    }

    // returns true if our set contains this resort
    func contains(_ image: String) -> Bool {
        images.contains(image)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ image: String) {
        objectWillChange.send()
        images.append(image)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ image: String) {
        objectWillChange.send()
        var counter = 0
        var removeIndex = 0
        while counter < images.count {
            if images[counter] == image {
                removeIndex = counter
            }
            counter += 1
        }
        images.remove(at: removeIndex)
        save()
    }
    
    func removeAll() {
        objectWillChange.send()
        images.removeAll()
        save()
    }

    func save() {
        // write out our data
        UserDefaults.standard.set(self.images, forKey: saveKey)
    }
}
