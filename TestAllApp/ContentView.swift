//
//  ContentView.swift
//  TestAllApp
//
//  Created by Matheus Lucas on 06/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @State private var darkModeEnabled: Bool = false
    @State private var email: String = ""
    @State private var senha: String = ""
    @State private var enviarFormulario: Bool = false

    var body: some View {
        VStack{
            TextField("Email", text: $email).accessibility(identifier: "emailField").padding().background(Color.gray)
            SecureField("Senha", text: $senha).accessibility(identifier: "senhaField").padding().background(Color.gray)
            
            Toggle(isOn: self.$darkModeEnabled, label: {
                Text("DarkMode")
            }).labelsHidden().accessibility(identifier: "darkModeToggle")
            Text(self.darkModeEnabled ? "ON": "OFF").font(.largeTitle).accessibility(identifier: "darkModeText")
            
            Text("Enviar").font(.title).padding().background(Color.blue).onTapGesture {
                self.enviarFormulario.toggle()
            }.accessibility(identifier: "sendForm")
            
            Text(self.enviarFormulario ? "ENVIADO": "NULL").font(.largeTitle).accessibility(identifier: "darkModeText")
            
            Text(email).accessibility(identifier: "darkModeText")
            Text(email).accessibility(identifier: "darkModeText")

            Text(self.senha).accessibility(identifier: "darkModeText")
            
            
        }
    }

 


}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
