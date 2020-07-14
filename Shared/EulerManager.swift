import Combine
import Foundation

class EulerManager: ObservableObject {
    @Published var problems: [EulerProblem] = EulerProblemNumber.allCases.map({EulerProblem($0)})

    func processAllProblems() {
        for index in 0..<problems.endIndex {
            processProblem(problems[index].problem)
        }
    }

    func processProblem(_ problem: EulerProblemNumber) {
        self.problems[problem.rawValue - 1].state = .processing
        DispatchQueue.global(qos: .userInitiated).async {

            let answer: String

            switch problem {
            case .p1: answer = Problem0001().description
            case .p2: answer = Problem0002().description
            case .p3: answer = Problem0003().description
            case .p4: answer = Problem0004().description
            case .p5: answer = Problem0005().description
            case .p6: answer = Problem0006().description
            case .p7: answer = Problem0007().description
            case .p8: answer = Problem0008().description
            }

            DispatchQueue.main.async {
                self.problems[problem.rawValue - 1].answer = answer
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
}

enum EulerProblemState {
    case answered
    case processing
    case unanswered
}

struct EulerProblem: Identifiable {
    let problem: EulerProblemNumber
    var answer: String = ""
    var state: EulerProblemState = .unanswered

    var id: String {
        return "Problem \(problem.rawValue)"
    }

    init(_ number: EulerProblemNumber) {
        problem = number
    }
}
