import SwiftUI

struct HealthPoints {
    var current: Int
    var total: Int
}

struct HealthBar : View {
    
    var healthPoints: HealthPoints
    
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
        if index <= healthPoints.current {
            return Color.green
        }
        return Color.gray
    }
}

#if DEBUG
struct HealthBar_Previews : PreviewProvider {
    static var previews: some View {
        HealthBar(healthPoints: HealthPoints(current: 5, total: 11))
    }
}
#endif
