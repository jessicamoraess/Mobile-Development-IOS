import Foundation 

//import UIKit 

  

struct IMC{ 

  var weigth: Double 

  var heigth: Double 

  

} 

  

let person = IMC(weigth: 50, heigth: 1.70) 

  

func calculateIMC(weigth: Double, heigth: Double) -> Double{ 

  return weigth / (heigth * heigth)  

   

  

} 

  

let imcPerson = calculateIMC(weigth: person.weigth, heigth: person.heigth) 

  

switch imcPerson{ 

  case 0..<18.5: 

  print("abaixo do peso") 

  case 18..<25.3: 

  print("peso ideal") 

  case 25..<29.1: 

  print("acima do peso") 

  case 29..<39.2: 

  print("obeso") 

  default: 

  print("nenhuma das opções") 

   

  print (imcPerson) 

   

   

  } 