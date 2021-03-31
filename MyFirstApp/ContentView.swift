//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Sittinon Phiwkliang on 30/3/2564 BE.
//

import SwiftUI

struct ContentView: View
{
    
    @State var result:String = "ทอยลูกเต๋า!!!"
    @State var dnum:Int = 0
    @State var count:Int = 0
    @State var total:Double = 0
    @State var std:Double = 0
    
    var body: some View
    {
        VStack {
            VStack {
                VStack
                {
                    Text(result)
                        .font(.title)
                        .foregroundColor(.red)
                        .frame(width: 300, height: 100, alignment: .top)
                    Button(action:
                            {
                                let dnumlist = ["หนึ่ง!","สอง!","สาม!","สี่!","ห้า!","หก!"]
                                self.dnum = Int.random(in: 0...5)
                                self.result = dnumlist[self.dnum]
                                
                                self.count += 1
                                self.total = self.total + Double(dnum+1)
                                self.std = total/Double(count)
                            })
                                {
                                    Text("กดสุ่ม")
                                        .font(.title2)
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                }
                }
                Text("จำนวนที่สุม " + String(count) + " ครั้ง")
            }
            Text("ค่าเฉลี่ย " + String(format:"%.2f", std) + " แต้ม")
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        Group
        {
            ContentView()
                
        }
    }
}
