//
//  ContentView.swift
//
//

import SwiftUI
import UserNotifications

struct Homepage: View {
    init() { UITableView.appearance().backgroundColor = UIColor.clear }
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(availableApps) { app in
                            NavigationLink {
                                DetailedTutorials(app: app)
                            } label: {
                                HStack {
                                    Image(app.imageURL)
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .center)
                                        .padding()
                                    Text(app.name)
                                        .bold()
                                        .foregroundColor(Color.yellow)
                                        .font(.system(size: 30))
                                    
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Homepage")
                .onAppear {
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                        if success {
                            print("All set!")
                            let content = UNMutableNotificationContent()
                            content.title = "Need a tutorial for whatsapp?"

                            content.sound = UNNotificationSound.default
                            
                            // show this notification five seconds from now
                            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                            
                            // choose a random identifier
                            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                            
                            print(request)
                            
                            // add our notification request
                            UNUserNotificationCenter.current().add(request)
                        } else if let error = error {
                            print(error.localizedDescription)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
