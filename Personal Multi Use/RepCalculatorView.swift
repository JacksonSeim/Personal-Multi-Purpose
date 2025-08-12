//
//  RepCalculatorView.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/12/25.
//

import SwiftUI

public struct RepCalculatorView: View {
    @State var weight: Int?
    @State var reps: Int?
    @State var repTableData: [(Float, Int)] = []
    public var body: some View {
        VStack{
            HStack {
                Spacer(minLength: 20)
                Text("Weight (lbs)")
                TextField("Weight", value: $weight, formatter: NumberFormatter())
                    .disableAutocorrection(true)
                    .keyboardType(.decimalPad)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                    .background(Color(UIColor.systemGray6))
                    .clipShape(Capsule(style: .continuous))
                Spacer(minLength: 20)
            }
            HStack {
                Spacer(minLength: 20)
                Text("Reps")
                TextField("Reps", value: $reps, formatter: NumberFormatter())
                    .disableAutocorrection(true)
                    .keyboardType(.decimalPad)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                    .background(Color(UIColor.systemGray6))
                    .clipShape(Capsule(style: .continuous))
                Spacer(minLength: 20)
            }
            Button("See Different Rep Counts"){
                if (weight != nil && reps != nil){
                    repTableData = calculateRepMaxes(inputWeight: weight ?? 0, inputReps: reps ?? 0)
                }
            }.disabled(weight == nil || reps == nil).buttonStyle(.borderedProminent).cornerRadius(25)
            
            if !repTableData.isEmpty {
                List(repTableData.indices, id: \.self) {index in
                    let weightRepGrouping = repTableData[index]
                        HStack{
                        Text("\(weightRepGrouping.0) lbs")
                        Spacer()
                        Text("\(weightRepGrouping.1) reps")
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    func calculateRepMaxes (inputWeight: Int, inputReps: Int) -> [(Float, Int)] {
        var result: [(Float, Int)] = []
        
        if (inputReps > 0 && inputWeight > 0){
            if (inputReps <= 5){
                result.append((BrzyckiFormula(inputWeight: inputWeight, inputReps: inputReps), 1))
                for i in 2...12 {
                    result.append(( BrzyckiFormulaInverse(oneRepMax: result[0].0, reps: i) ,i))
                }
            }
            else {
                result.append((OConnerFormula(inputWeight: inputWeight, inputReps: inputReps), 1))
                for i in 2...12 {
                    result.append((OConnerFormulaInverse(oneRepMax: result[0].0, reps: i), i))
                }
            }
        }
        
        return result;
    }
    
    func BrzyckiFormula (inputWeight: Int, inputReps: Int) -> Float {
        return Float(Float(inputWeight) / (1.0278 as Float - (0.0278 as Float * Float(inputReps))))
    }
    
    func BrzyckiFormulaInverse (oneRepMax: Float, reps: Int) -> Float {
        return Float(oneRepMax * (1.0278 - (0.0278 * Float(reps))))
    }
    
    func OConnerFormula (inputWeight: Int, inputReps: Int) -> Float {
        return Float(Float(inputWeight) * (1 + (0.025 as Float * Float(inputReps))))
    }
    
    func OConnerFormulaInverse (oneRepMax: Float, reps: Int) -> Float {
        return Float(oneRepMax) / (1 + (0.025 * Float(reps)))
    }
}
