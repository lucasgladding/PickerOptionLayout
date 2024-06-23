import Foundation

enum Frequency: String, CaseIterable {
    case weekly
    case biweekly
    case semimonthly
    case monthly
    case semiannually
    case annually
}

extension Frequency {
    var label: String {
        switch self {
        case .weekly: return "Weekly"
        case .biweekly: return "Bi-Weekly"
        case .semimonthly: return "Semi-Monthly"
        case .monthly: return "Monthly"
        case .semiannually: return "Semi-Annually"
        case .annually: return "Annually"
        }
    }
}

extension Frequency: Identifiable {
    var id: String {
        return rawValue
    }
}
