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
    
    @IBOutlet weak var calendarView: SSCalendarView!
    
    let calendarStartDate = Date("2019-01-01")
    let calendarEndDate = Date("2019-12-31")
    
    
    
    override func viewDidLoad() {
      //  super.viewDidLoad()
      //  initialSetup()
     //
       



    }
    
    override func viewDidAppear(_ animated: Bool) {
           self.calendarView.delegate = self
               calendarView.setUpCalendar(startDate: calendarStartDate, endDate: calendarEndDate, weekStartDay: .sunday, shouldSelectPastDays: true, sholudAllowMultipleSelection: true)
    }
    
//    fileprivate func initialSetup() {
//        self.calendarView.delegate = self
//
//    }
    

}

extension Date {
    init(_ dateString:String) {
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        dateStringFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        let date = dateStringFormatter.date(from: dateString)!
        self.init(timeInterval:0, since:date)
    }
}

extension CalendarViewController: SSCalendarDeleagte {
    
    func dateSelected(_ date: Date) {
        print("selected: \(date)")
    }
    
    func dateDeSelected(_ date: Date) {
        print("deSelected: \(date)")
    }
}
