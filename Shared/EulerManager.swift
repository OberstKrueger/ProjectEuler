import Combine
import Foundation

class EulerManager: ObservableObject {
    @Published var problems: [EulerProblem] = EulerProblemNumber.allCases.map({EulerProblem($0)})

    func processAllProblems(_ stress: Bool = false) {
        for index in 0..<problems.endIndex {
            processProblem(problems[index].problem, stress)
        }
    }

    func processProblem(_ problem: EulerProblemNumber, _ stress: Bool = false) {
        self.problems[problem.rawValue - 1].state = .processing
        DispatchQueue.global(qos: .userInitiated).async {
            let startTime = Date()
            let times: Int = stress ? 100 : 1
            var answer: String = ""

            for _ in 1...times {
                switch problem {
                case .p1:  answer = Problem0001().description
                case .p2:  answer = Problem0002().description
                case .p3:  answer = Problem0003().description
                case .p4:  answer = Problem0004().description
                case .p5:  answer = Problem0005().description
                case .p6:  answer = Problem0006().description
                case .p7:  answer = Problem0007().description
                case .p8:  answer = Problem0008().description
                case .p9:  answer = Problem0009().description
                case .p10: answer = Problem0010().description
                case .p11: answer = Problem0011().description
                case .p12: answer = Problem0012().description
                case .p13: answer = Problem0013().description
                case .p14: answer = Problem0014().description
                case .p15: answer = Problem0015().description
                case .p16: answer = Problem0016().description
                }
            }

            let endTime = Date()

            DispatchQueue.main.async {
                self.problems[problem.rawValue - 1].answer = answer
                self.problems[problem.rawValue - 1].completionSpeed = endTime.timeIntervalSince(startTime)
                self.problems[problem.rawValue - 1].state = .answered
            }
        }
    }
}

enum EulerProblemNumber: Int, CaseIterable {
    case p1 = 1
    case p2
    case p3
    case p4
    case p5
    case p6
    case p7
    case p8
    case p9
    case p10
    case p11
    case p12
    case p13
    case p14
    case p15
    case p16
}

enum EulerProblemState {
    case answered
    case processing
    case unanswered
}

struct EulerProblem: Identifiable {
    let problem: EulerProblemNumber
    var answer: String = ""
    var completionSpeed: TimeInterval = 0
    var state: EulerProblemState = .unanswered

    var id: String {
        return "Problem \(problem.rawValue)"
    }

    var speed: String {
        let formatter = NumberFormatter()

        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2

        // Forced unwrapped due to the value never being not a number.
        return formatter.string(for: completionSpeed)!
    }

    init(_ number: EulerProblemNumber) {
        problem = number
    }
}
