import Inject
import SwiftUI

public struct SettingsView: View {
    public init() {}

    public var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Local Package2")) {
                    HStack {
                        Text("User")
                        Spacer()
                        UserView()
                    }
                }
            }
            .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

public struct UserView: View {
    @ObserveInjection var inject
    public init() {}

    public var body: some View {
        Text("Marco Eidinger2")
            .foregroundColor(.accentColor)
    }
}
