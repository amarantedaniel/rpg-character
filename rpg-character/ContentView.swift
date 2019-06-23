import SwiftUI

struct ContentView : View {
    
    @State var character = Character()
    
    var body: some View {
        VStack {
            HealthBar(healthPoints: character.healthPoints)
            Stepper(
                onIncrement: { self.character.healthPoints.increment() },
                onDecrement: { self.character.healthPoints.decrement() },
                label: { Text(self.character.healthPoints.description) }
            )
            DeathSavesBar(deathSaves: character.deathSaves)
            Stepper(
                onIncrement: { self.character.deathSaves.increment(type: .success) },
                onDecrement: { self.character.deathSaves.decrement(type: .success) },
                label: { Text("Successes: \(character.deathSaves.success)") }
            )
            Stepper(
                onIncrement: { self.character.deathSaves.increment(type: .failure) },
                onDecrement: { self.character.deathSaves.decrement(type: .failure) },
                label: { Text("Failures: \(character.deathSaves.failure)") }
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
