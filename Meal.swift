//
//  Meal.swift
//  FoodTracker
//
//  Created by Jasdip on 2016-09-27.
//  Copyright © 2016 Jasdip. All rights reserved.
//

import UIKit

class Meal {
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        //initialization should fail if there is no name or if the rating is negative
        if (name.isEmpty || rating < 0) {
            return nil
        }
    }
    
    //MARK: properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
}
