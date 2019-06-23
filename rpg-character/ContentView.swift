import SwiftUI

struct ContentView : View {

    @State var healthPoints = HealthPoints(current: 10, total: 10)
    
    var body: some View {
        HealthBar(healthPoints: healthPoints).padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
