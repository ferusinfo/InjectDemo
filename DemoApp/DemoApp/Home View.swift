import Inject
import LocalPackage
import SwiftUI

struct HomeView: View {
    @ObserveInjection var inject
    @State var selection: Int = 0
    var body: some View {
        TabView(selection: $selection) {
            ContentView(model: AppViewModel())
                .tabItem { Text("Left") }
                .tag(1)
            SettingsView()
            .tabItem { Text("Right") }
            .tag(2)
        }
        .environmentObject(AppViewModel())
        .enableInjection()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
