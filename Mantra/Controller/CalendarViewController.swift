//
//  CalendarViewController.swift
//  Mantra
//
//  Created by Melissa Boring on 8/26/19.
//  Copyright © 2019 Melissa Boring. All rights reserved.
//

import UIKit
import SSCalendarControl

class CalendarViewController: UIViewController {


    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var endDatePicker: UIDatePicker!
    @IBOutlet weak var timePeriodSegmentControl: UISegmentedControl!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var endDateTimeLabel: UILabel!
    
    @IBAction func startDatePickerChanged(_ sender: Any) {
        setTimeInterval()
    }
    
    @IBAction func endDatePickerChanged(_ sender: Any) {
        
    }
    
    @IBAction func intervalPickerChanged(_ sender: Any) {
        setTimeInterval()
    }
    
    // TODO: implement NSCoding to save user's preferences
    @IBAction func saveScheduleForMantra(_ sender: Any) {
       
    }
    
    //Dismiss the view and navigate back to Mantra VC
    @IBAction func dismissView(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        setTimeInterval()
    }

    //switch between 40, 80 120 days or select a custom interval
    func setTimeInterval() {
        
        var timeInterval : Double
        //40 days in seconds
        let fortyDaysInSeconds = Double(3456000)

        switch timePeriodSegmentControl.selectedSegmentIndex {
        case 0:
            timeInterval = fortyDaysInSeconds
        case 1:
            timeInterval = fortyDaysInSeconds
        case 2:
            timeInterval = (fortyDaysInSeconds * 3.0)
        case 3:
            timeInterval = 0.0
        default:
            timeInterval = fortyDaysInSeconds
        }
        
        dateTimeLabel.text = formatDateTime(dateToFormat: startDatePicker.date)
        endDatePicker.date = startDatePicker.date.addingTimeInterval(timeInterval)
        endDateTimeLabel.text = formatDateTime(dateToFormat: endDatePicker.date)
    }
    
    func formatDateTime(dateToFormat: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        let strDateTime = dateFormatter.string(from: dateToFormat)
        return strDateTime
    }


}

