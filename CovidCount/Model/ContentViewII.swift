//
//  ContentViewII.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/8/20.
//
//

import SwiftUI



class Post: Codable, Identifiable {




    


    var negative: Int
    //var hospitalizedCurrently: Int
    //var onVentilatorCurrently: Int
    //var inIcuCurrently: Int
    var lastUpdateEt: String
    var recovered: Int
    var state: String
    //var totalTestsViral: Int
    var death: Int
  //  var pending: Int
   // var dataQualityGrade: String
    //var positiveTestsViral: Int
    //var hospitalizedIncrease: Int
    //var deathIncrease: Int
    //var totalTestResultsIncrease: Int
    var date: Int
    //var onVentilatorCumulative: Int
    //var inIcuCumulative: Int
    var positive: Int
    }
struct ContentViewII: View {
    @ObservedObject var fetch = FetchView()

    var body: some View {


        VStack {
                  // 2.
                  List(fetch.todos) { todo in
                      VStack(alignment: .leading) {
                          // 3.
                        Text(todo.state.debugDescription)// print boolean
                              .font(.system(size: 11))
                              .foregroundColor(Color.gray)
                      }
                  }.navigationBarTitle("Country List")
        }.onAppear(perform: loaddata)
    }


}

class FetchView: ObservableObject {
    @Published var todos = [Post]()

    init() {
           let url = URL(string: "https://covidtracking.com/api/states")!
           // 2.
           URLSession.shared.dataTask(with: url) {(data, response, error) in
               do {
                   if let todoData = data {
                       // 3.
                       let decodedData = try JSONDecoder().decode([Post].self, from: todoData)
                       DispatchQueue.main.async {
                           self.todos = decodedData
                       }
                   } else {
                       print("No data")
                   }
               } catch {
                   print("Error")
               }
           }.resume()
       }
   }
extension ContentViewII {
func loaddata () {
    let semaphore = DispatchSemaphore (value: 0)

var request = URLRequest(url: URL(string: "https://covidtracking.com/api/states")!,timeoutInterval: Double.infinity)
request.httpMethod = "GET"

let task = URLSession.shared.dataTask(with: request) { data, response, error in
  guard let data = data else {
    print(String(describing: error))
    return
  }


    print(String(data: data, encoding: .utf8)!)


  semaphore.signal()

}

task.resume()
semaphore.wait()
//print(loaddata)

}
}

struct ContentViewII_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewII()
    }
}



