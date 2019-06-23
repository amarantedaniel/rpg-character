import SwiftUI

struct DeathSavesBar : View {
    
    let deathSaves: DeathSaves
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack() {
                Text("SUCCESSES")
                ForEach(0..<3) { index in
                    DeathSave(checked: index < self.deathSaves.success, type: .success)
                }
            }
            HStack {
                Text("FAILURES")
                ForEach(0..<3) { index in
                    DeathSave(checked: index < self.deathSaves.failure, type: .failure)
                }
            }
        }
    }
}

struct DeathSave: View {
    
    let checked: Bool
    let type: DeathSaveType
    
    var body: some View {
        color()
            .frame(width: 25, height: 25)
            .border(Color.gray, cornerRadius: 25)
            .cornerRadius(25)
    }
    
    func color() -> Color {
        switch (checked, type) {
        case (true, .success):
            return Color.green
        case (true, .failure):
            return Color.red
        case (false, _):
            return Color.white
        }
    }
}

#if DEBUG
struct DeathSavesBar_Previews : PreviewProvider {
    static var previews: some View {
        DeathSavesBar(deathSaves: DeathSaves(success: 0, failure: 0))
    }
}
#endif
