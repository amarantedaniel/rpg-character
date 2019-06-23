import SwiftUI

struct HealthBar : View {
    
    let healthPoints: HealthPoints
    
    var body: some View {
        HStack(spacing: 2) {
            ForEach(0..<healthPoints.total) { index in
                self.healthPointColor(index: index)
            }
        }
            .frame(height: 25.0)
            .background(Color.black)
            .border(Color.black, width: 2, cornerRadius: 5)
            .cornerRadius(5)
    }
    
    private func healthPointColor(index: Int) -> Color {
        return isHealthPointValid(index: index) ? colorForValidPoint() : Color.gray
    }
    
    private func isHealthPointValid(index: Int) -> Bool {
        return index + 1 <= healthPoints.current
    }
    
    private func colorForValidPoint() -> Color {
        switch healthPoints.dangerLevel() {
        case .danger:
            return Color.red
        case .caution:
            return Color.yellow
        case .safe:
            return Color.green
        }
    }
}

#if DEBUG
struct HealthBar_Previews : PreviewProvider {
    static var previews: some View {
        HealthBar(healthPoints: HealthPoints(current: 5, total: 11))
    }
}
#endif
