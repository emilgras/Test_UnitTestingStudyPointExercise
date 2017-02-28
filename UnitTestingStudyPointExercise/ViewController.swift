//
//  ViewController.swift
//  UnitTestingStudyPointExercise
//
//  Created by Emil Gräs on 28/02/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
//        print("\(getNumDaysInMonth(month: 2, year: 0))")
    }

    public func getNumDaysInMonth(month: Int, year: Int) -> Int
    {
        if validMonth(month: month) && validYear(year: year)
        {
            // check february
            if month == 2
            {
                if isLeapYear(year: year)
                {
                    return 29
                }
                else
                {
                    return 28
                }
            }
            else
            {
                if isEven(month: month)
                {
                    return 30
                }
                else
                {
                    return 31
                }
            }
        }
        return -1
    }
    
    fileprivate func validMonth(month: Int) -> Bool
    {
        if month >= 1 && month <= 12
        {
            return true
        }
        return false
    }
    
    fileprivate func validYear(year: Int) -> Bool
    {
        /* (NSDecimalNumber(decimal: pow(2, 31)).intValue - 1) */
        if year >= 0 && year <=  (Int.max - 1)
        {
            return true
        }
        return false
    }
    
    fileprivate func isLeapYear(year: Int) -> Bool
    {
        if thisYear(year: year, isMultipleOf: 4)
        {
            if thisYear(year: year, isMultipleOf: 100) && !thisYear(year: year, isMultipleOf: 400)
            {
                return false
            }
            return true
        }
        return false
    }
    
    func thisYear(year: Int, isMultipleOf number: Int) -> Bool {
        if year % number == 0 {
            return true
        }
        return false
    }
    
    
    fileprivate func isEven(month: Int) -> Bool
    {
        if month % 2 == 0
        {
            return true
        }
        return false
    }
    
}


