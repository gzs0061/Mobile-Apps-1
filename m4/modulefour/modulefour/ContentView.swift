//
//  ContentView.swift
//  modulefour
//
//  Created by Gabriella Seaman on 11/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var loanAmount = Float()
    @State var numofPayments = Int()
    @State var interestRate = Float()
    @State var payPeriod = Float()
    @State var totalPay = Float()
    @State var total = ""
    
    func payment() -> Void {
            
            payPeriod = (Float(loanAmount) * interestRate) / (1 - pow(1 + interestRate, -1.0 * Float (numofPayments)))
            
            totalPay = payPeriod * Float(numofPayments)
            
            total = String(totalPay)
            
            
        }
   
    var body: some View {
        VStack {
            
            Label("Loan Amount", systemImage: /*@START_MENU_TOKEN@*/"dollarsign.circle"/*@END_MENU_TOKEN@*/)

            
            HStack {
                Spacer(minLength: 25)
                TextField("Loan Amount", value: $loanAmount, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Label("Number of Payments", systemImage: /*@START_MENU_TOKEN@*/"number.circle"/*@END_MENU_TOKEN@*/)
                HStack {
                    Spacer(minLength: 25)
                    TextField("Number of Payments", value: $numofPayments,format: .number)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            Label("Interest Rates", systemImage: /*@START_MENU_TOKEN@*/"percent"/*@END_MENU_TOKEN@*/)
            
                HStack {
                    Spacer(minLength: 25)
                    TextField("Interest Rate", value: $interestRate, format: .number)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            Button("Caluculate Payment", action: payment)
        
            Label(/*@START_MENU_TOKEN@*/"Total Payment Amount"/*@END_MENU_TOKEN@*/, systemImage: "dollarsign.square.fill")
            Text("\(totalPay)")
        }
       
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
