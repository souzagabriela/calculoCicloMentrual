////
////  date-compon.swift
////  BloodyEmotional
////
////  Created by Gabriela Souza Batista on 22/03/22.
//
//
//import EventKit
//
//let store = EKEventStore()
//func requestAccess() {
//store.requestAccess(to: .reminder) { (granted, error) in
//    if let error = error {
//        print(error)
//        return
//    }
//    if granted {
//    }
//        print("GRANTED")
//
//guard let remindersCalendar = store.defaultCalendarForNewReminders() else { return }
//guard let eventsCalendar = store.defaultCalendarForNewEvents else { return }
//
//let newReminder = EKReminder(eventStore: store)
//
//    newReminder.calendar = remindersCalendar
//    newReminder.title = "Buy coffee"
//
//        try! store.save(newReminder, commit: true)
//
//let newEvent = EKEvent(eventStore: store)
//    newEvent.calendar = eventsCalendar
//    newEvent.title = "This is my test event"
//    newEvent.startDate = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
//    newEvent.isAllDay = true
//    newEvent.endDate = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
//
//        try! store.save(newEvent, span: .thisEvent, commit: true)
//
//
//    }
//}
//
//RunLoop.main.run()
