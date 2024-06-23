import SwiftUI

struct LoanForm: View {
    @State
    private var frequency: Frequency = .monthly

    var body: some View {
        Form {
            Picker("Frequency", selection: $frequency) {
                ForEach(Frequency.allCases) { option in
                    Text(option.label).tag(option)
                }
            }
        }
    }
}

#Preview {
    LoanForm()
}
