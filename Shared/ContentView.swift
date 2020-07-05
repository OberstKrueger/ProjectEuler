import SwiftUI

struct ContentView: View {
    @ObservedObject var euler = EulerManager()

    var body: some View {
        ScrollView {
            HStack {
                Text("Project Euler")
                    .font(.headline)
                Spacer()
                Button("Process All") {
                    self.euler.processAllProblems()
                }
            }.padding()
            Divider()
            ForEach(euler.problems) { problem in
                HStack {
                    Text(problem.id)
                    Spacer()
                    if problem.state == .answered {
                        Text(problem.answer)
                    } else if problem.state == .processing {
                        Text("Processing...")
                    } else if problem.state == .unanswered {
                        Button("Process") {
                            self.euler.processProblem(problem.problem)
                        }
                    }
                }.padding()
                Divider()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
