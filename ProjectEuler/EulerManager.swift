import Combine

enum EulerProblemNumber: Int, CaseIterable {
    case p1 = 1
    case p2
    case p3
    case p4
    case p5
}

class EulerManager: ObservableObject {
    @Published var problems: [EulerProblem] = EulerProblemNumber.allCases.map({EulerProblem($0)})

    func processAllProblems() {
        for index in 0..<problems.endIndex {
            if problems[index].answer == nil {
                processProblem(problems[index].problem)
            }
        }
    }

    func processProblem(_ problem: EulerProblemNumber) {
        let answer: String

        switch problem {
        case .p1: answer = Problem0001().description
        case .p2: answer = Problem0002().description
        case .p3: answer = Problem0003().description
        case .p4: answer = Problem0004().description
        case .p5: answer = Problem0005().description
        }

        problems[problem.rawValue - 1].answer = answer
    }
}

struct EulerProblem: Identifiable {
    let problem: EulerProblemNumber
    var answer: String?

    var id: String {
        return "Problem \(problem.rawValue)"
    }

    init(_ number: EulerProblemNumber) {
        problem = number
    }
}
