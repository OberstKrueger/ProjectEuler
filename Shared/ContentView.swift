import SwiftUI

struct ContentView: View {
    @ObservedObject var euler = EulerManager()

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(euler.problems) { problem in
                    HStack {
                        Text(problem.id)
                        Spacer()
                        if problem.state == .answered {
                            Text("\(problem.answer) (\(problem.speed))")
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
                Button("Process All") {
                    self.euler.processAllProblems()
                }
                .padding()
            }
            .navigationTitle("Project Euler")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
