//
//  main.swift
//  LESSON1 HOMEwork
//
//  Created by Олег Елисеев on 21.09.2023.
//

import Foundation

var summavklada: Float = 1000
var procent: Float = 5
procent = procent / 100

var itog1 = summavklada + (summavklada * procent)
var itog2 = itog1 + (itog1 * procent)
var itog3 = itog2 + (itog2 * procent)
var itog4 = itog3 + (itog3 * procent)
var itog5 = itog4 + (itog4 * procent)
var counter = 1
var time = [itog1, itog2 ,itog3, itog4, itog5]
for i in time{
    print("через \(counter) лет сумма вклада увеличится на \(i)")
    counter += 1
}
