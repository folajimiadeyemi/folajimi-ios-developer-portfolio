import SwiftUI
import CoreData

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
}

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(title: "Buy groceries", isCompleted: false),
        Task(title: "Finish project", isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks) { task in
                    HStack {
                        Text(task.title)
                        Spacer()
                        Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(task.isCompleted ? .green : .gray)
                    }
                }
            }
            .navigationTitle("To-Do List")
        }
    }
}
