import SwiftUI

struct ContentView : View {

    @State var healthPoints = HealthPoints(current: 10, total: 10)
    @State var deathSaves = DeathSaves()
    
    var body: some View {
        VStack {
            HealthBar(healthPoints: healthPoints)
            Stepper(
                onIncrement: { self.healthPoints.increment() },
                onDecrement: { self.healthPoints.decrement() },
                label: { Text(self.healthPoints.description) }
            )
            DeathSavesBar(deathSaves: deathSaves)
            Stepper(
                onIncrement: { self.deathSaves.increment(type: .success) },
                onDecrement: { self.deathSaves.decrement(type: .success) },
                label: { Text("Successes: \(deathSaves.success)") }
            )
            Stepper(
                onIncrement: { self.deathSaves.increment(type: .failure) },
                onDecrement: { self.deathSaves.decrement(type: .failure) },
                label: { Text("Failures: \(deathSaves.failure)") }
            )
        }.padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
