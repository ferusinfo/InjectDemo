import SwiftUI

class AppViewModel: ObservableObject {
    @Published var lastUpdated: String = "N/A"
    
    func loadStatus() {
        DispatchQueue.main.async { [weak self] in
            self?.lastUpdated = Date().formatted(date: .omitted, time: .complete)
            self?.objectWillChange.send()
        }
    }
}
