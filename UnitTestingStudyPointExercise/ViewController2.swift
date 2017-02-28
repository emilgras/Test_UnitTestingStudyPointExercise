//
//  ViewController2.swift
//  UnitTestingStudyPointExercise
//
//  Created by Emil Gräs on 28/02/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(getReimbursement(deductableIsMet: true, visit: 1))
        print(getReimbursement(deductableIsMet: true, visit: 2))
        print(getReimbursement(deductableIsMet: false, visit: 1))
        print(getReimbursement(deductableIsMet: false, visit: 2))
    }
    
    // Visit:
    // 1 = doctors office visit
    // 2 = hospital visit
    
    func getReimbursement(deductableIsMet: Bool, visit: Int) -> Int {
        
        if visit >= 1 && visit <= 2 {
            if deductableIsMet {
                if visit == 1 {
                    return 50
                } else {
                    return 80
                }
            } else {
                return -1
            }
        }
        return -1
    }

}
