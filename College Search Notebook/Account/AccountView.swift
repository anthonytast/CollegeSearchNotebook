//
//  AccountView.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 9/11/22.
//

//mostly from appetizers app

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @State var noteSuggestions = true
    @State var schoolType = true
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthday,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
//                Section(header: Text("Requests")) {
//                    Toggle("Note Suggestions", isOn: $noteSuggestions)
//                    Toggle("School Types", isOn: $schoolType)
//                }
                // these features & features with adding/removing note sections can be added later.
                
                
                
            }
            .navigationTitle("Account")
        }
        .onAppear{
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) {
            AlertItem in Alert(title: AlertItem.title, message: AlertItem.message, dismissButton: AlertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
