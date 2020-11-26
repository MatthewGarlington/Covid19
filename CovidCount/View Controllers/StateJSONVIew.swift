//
//  StateJSONVIew.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/7/20.
//

import SwiftUI

struct StateJSONVIew: View {
    
    @State var testNetworkingManager = TestNetworkingManager()
   
    
    
    var body: some View {
        List{
            ForEach(testNetworkingManager.StateList.list,
                    id: \.state) { StateJSON in
                Text(StateJSON.state)
    
}
    }
}
}

struct StateJSONVIew_Previews: PreviewProvider {
    static var previews: some View {
        StateJSONVIew()
    }
}
 
