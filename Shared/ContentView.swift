import SwiftUI

struct ContentView: View {
    @ObservedObject var euler = EulerManager()

    @State var stressToggle: Bool = false

    var body: some View {
        NavigationView {
            VStack {
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
                }
                Divider()
                HStack {
                    Button("Process All") {
                        self.euler.processAllProblems(stressToggle)
                    }
                    Spacer()
                    HStack {
                        Text("Stress Test")
                        Toggle("", isOn: $stressToggle)
                            // Label is hidden to force rightward alignment
                            .labelsHidden()
                    }
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
