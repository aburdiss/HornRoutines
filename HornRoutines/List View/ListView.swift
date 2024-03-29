//
//  ListView.swift
//  HornRoutines
//
//  Created by Alexander Burdiss on 5/16/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
The list of all exercises in the app. When clicked, ExerciseDetailView will open and display the exercise. Each exercise must be referred to statically because Swift has problems using Dynamically Generated content the destination of a NavigationLink. This may be updated in future versions of Swift
*/
struct ListView: View {
    /**
    The user selected Favorites
    */
    @EnvironmentObject var favorites: Favorites
    
    /**
     The user interface
     */
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Long Tones")) {
                    ForEach(longTones, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                Section(header: Text("Slow Lip Slurs")) {
                    ForEach(slowLipSlurs, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                Section(header: Text("Fast Lip Slurs")) {
                    ForEach(fastLipSlurs, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                Section(header: Text("Single Note Articulation")) {
                    ForEach(staticArticulation, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                Section(header: Text("Moving Note Articulation")) {
                    ForEach(variableArticulation, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                
                Section(header: Text("Scales")) {
                    // There are more than 10 Scales, so they must be further divided into sections.
                    Section {
                        NavigationLink(destination: ExerciseDetailView(image: "50")) {
                            Text("50 (C Major)")
                            if self.favorites.contains("50") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "51")) {
                            Text("51 (D♭ Major)")
                            if self.favorites.contains("51") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "52")) {
                            Text("52 (D Major)")
                            if self.favorites.contains("52") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "53")) {
                            Text("53 (E♭ Major)")
                            if self.favorites.contains("53") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "54")) {
                            Text("54 (E Major)")
                            if self.favorites.contains("54") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "55")) {
                            Text("55 (F Major)")
                            if self.favorites.contains("55") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "56")) {
                            Text("56 (F♯ Major)")
                            if self.favorites.contains("56") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "57")) {
                            Text("57 (G Major)")
                            if self.favorites.contains("57") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "58")) {
                            Text("58 (A♭ Major)")
                            if self.favorites.contains("58") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "59")) {
                            Text("59 (A Major)")
                            if self.favorites.contains("59") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    Section {
                        NavigationLink(destination: ExerciseDetailView(image: "60")) {
                            Text("60 (B♭ Major)")
                            if self.favorites.contains("60") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                        NavigationLink(destination: ExerciseDetailView(image: "61")) {
                            Text("61 (B Major)")
                            if self.favorites.contains("61") {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                
                Section(header: Text("High Range")) {
                   ForEach(highRange, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                Section(header: Text("Low Range")) {
                    ForEach(lowRange, id: \.self) { exercise in
                        NavigationLink(destination: ExerciseDetailView(image: exercise)) {
                            Text(exercise)
                            if self.favorites.contains(exercise) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("All Exercises")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(Favorites())
    }
}
