//////Local onde será importando para o calendário o que foi perguntado para o usuário e calculado: periodo menstrual e periodo fertil!
//////
//import EventKit
//
//let store = EKEventStore()
//
//store.requestAccess(to: .reminder) { (granted, error) in
//    if let error = error {
//        print(error)
//        return
//    }
//    if granted {
//
//        print("GRANTED")
//
//        guard let remindersCalendar = store.defaultCalendarForNewReminders() else { return }
//        guard let eventsCalendar = store.defaultCalendarForNewEvents else { return }
//
//        let newReminder = EKReminder(eventStore: store)
//
//        newReminder.calendar = remindersCalendar
//        newReminder.title = "Ciclo Menstrual"
//
//        try! store.save(newReminder, commit: true)
//
//        let newEvent = EKEvent(eventStore: store)
//        newEvent.calendar = eventsCalendar
//        newEvent.title = "Meu período menstrual"
//        newEvent.startDate = Calendar.current.date(byAdding: .day, value: 22, to: Date())!
//        newEvent.isAllDay = true
//        newEvent.endDate = Calendar.current.date(byAdding: .day, value: 27, to: Date())!
//
//        try! store.save(newEvent, span: .thisEvent, commit: true)
//
//
//    }
//}
//RunLoop.main.run()
