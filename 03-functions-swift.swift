//: Playground - noun: a place where people can play 
import Foundation 


//HIGH ORDER FUNCTIONS - Funcoes que trabalham com outras funcoes 

func sum(a:Int, b:Int) -> Int{ 

    return a+b 

}  

func multiply(a:Int, b:Int) -> Int{ 

    return a*b 

} 
 

func divide(a:Int, b:Int) -> Int{ 

    return a/b 

} 

func subtract(a:Int, b:Int) -> Int{ 

    return a-b 

} 


//Devolvendo funcao como retorno de uma funcao 

func getOperation(named operation: String) -> (Int,Int)-> Int{ 

    switch operation{ 

    case "sum": 

        return sum 

    case "subtract": 

        return subtract 

    case "multiply": 

        return multiply 

    default: 

        return divide 

} 

} 
 

var operation = getOperation(named: "divide") 

operation(20,6) 

 
//***************************************************************************
 
//Usando parametros como retorno de funcoes 

typealias Operation = (Int,Int) -> Int 


func applyOperation(a:Int, b:Int, operation: Operation) -> Int{ 

    return operation(a,b); 

} 
 
 

let result = applyOperation(a: 20, b: 6, operation: divide) 

print(result) 

 
//***************************************************************************

//Closure - Funcao anonima, sem nome, criada em RealTime 

  
//Sintaxe de uma Closure 

/* 

 {(para: Tipo, param2: Tipo) -> TipoRetorno in 

 //codigo 

  

 returnTipoRetorno 

 } 

 */ 

 
 

let result2 = applyOperation(a: 20,b: 3, operation: {(x: Int, y: Int) -> Int in return x % y}) 

print(result2) 

 
 

//Outras sintaxes 

applyOperation(a: 20,b: 3, operation: {(x, y) -> Int in return x % y}) 

 
applyOperation(a: 20,b: 3, operation: {return $0 % $1}) 


applyOperation(a: 20, b: 3) {$0 % $1}
 
 
 
//*************************************************************************** 
 

//Map 

var uppercasedNames = names.map{$0.uppercased()} 

print(uppercasedNames) 

 
 

var name5 = names.filter{$0.count<=5} 

print (names5) 

 
 

//Ordem Alfabetica 

var sortedNames = names.sorted(by: {$0 < $1}); 

print(sortedNames) 

 
//*************************************************************************** 

//Swap - Alterar valores/tipos de acordo com as resticoes 

func swapInts(){ 

//Struct, Valuetype, Copia 

//inout - passar como referencia e nao como copia, o que entra sai apos, a constante pode ser alterada 

 
//***************************************************************************     

//Generics - Alterar valores/tipos sem restricoes 

    func swapInts<T>(a: inout T, b: inout T){ 

        let temp = a 

        a = b 

        b = temp 

    } 

var x = "10.0" 

var y = "20.0" 

swapInts(a: &x, b: &y) 

x 

y 

     

} 

 

 

 