//
//  ConfirmHabitVC.swift
//  Habitual
//
//  Created by Mark Kim on 4/30/20.
//  Copyright © 2020 Mark Kim. All rights reserved.
//

import UIKit

class ConfirmHabitVC: UIViewController {
    
    var habitImage: Habit.Images!
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitNameInputField: UITextField!
    @IBAction func createHabitButtonPressed(_ sender: Any) {
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitNameInputField.text else { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updatedUI()
    }
    
    private func updatedUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }
    
}
