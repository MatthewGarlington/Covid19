//
//  FinishRegistration.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI

struct FinishRegistration: View {
    
    @State var name = ""
    @State var surname = ""
    @State var telephone = ""
    @State var address = ""
    
    
    
    var body: some View {
        
        Form {
            Section() {
                
                Text("Finish Registration")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .padding([.top, .bottom], 20)
                
                TextField("Name", text: $name)
                TextField("Surname", text: $surname)
                TextField("Telephone", text: $telephone)
                TextField("Address", text: $address)
            }// End of Section
            
            
            Section() {
                Button(action: {
                    
                    
                }, label: {
                    Text("Finish Registration")
                })
                
            }// End of section two
            .disabled(!self.fieldsCompleted())
        }// End of Form
    }// End of body
    
    private func fieldsCompleted() -> Bool {
        
        return self.name != "" && self.surname != "" && self.telephone != "" && self.address != ""
    }
    
    private func finishRegistration() {
        
    }
}

struct FinishRegistration_Previews: PreviewProvider {
    static var previews: some View {
        FinishRegistration()
    }
}
