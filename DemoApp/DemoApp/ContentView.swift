import LocalPackage
import SwiftUI
import Inject

struct ContentView: View {
    @StateObject var model: AppViewModel
    @ObserveInjection var inject
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Navigate to view from local package")) {
                    NavigationLink("User", destination: UserView())
                }
                Section(header: Text("on Appear")) {
                    HStack {
                        Text("Date")
                        Spacer()
                        Text(model.lastUpdated)
                    }
                }
            }
            .navigationTitle("Demo App")
        }
        .onAppear {
            self.model.loadStatus()
        }
        .navigationViewStyle(.stack)
        .enableInjection()
        .onInjection(callback: { _ in
            self.model.loadStatus()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: AppViewModel())
    }
}
