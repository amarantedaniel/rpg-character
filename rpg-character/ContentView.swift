import SwiftUI

struct ContentView : View {

    @State var healthPoints = HealthPoints(current: 10, total: 10)
    
    var body: some View {
        VStack {
            HealthBar(healthPoints: healthPoints).padding()
            Stepper(
                onIncrement: { self.healthPoints.increment() },
                onDecrement: { self.healthPoints.decrement() },
                label: { Text("Count is \(self.healthPoints.current)") }
            )
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
