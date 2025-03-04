import SwiftUI

struct Expense: Identifiable {
    let id = UUID()
    var category: String
    var amount: Double
}

struct ContentView: View {
    @State private var expenses: [Expense] = [
        Expense(category: "Food", amount: 50.0),
        Expense(category: "Transport", amount: 20.0)
    ]
    
    var body: some View {
        List(expenses) { expense in
            HStack {
                Text(expense.category)
                Spacer()
                Text("$
