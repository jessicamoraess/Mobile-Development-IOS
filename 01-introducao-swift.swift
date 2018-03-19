//Importar pacote 

import Foundation 

 
//*************************************************************************

//Comentários 

//Nao eh necessario; , somente para utilizar dois comandos na mesma linha 

 

//Comentario de uma unica linha 

var str: String = "FIAP" 

  

/* 

Comentario de varias linhas 

 Pode ter comentario dentro de outros comentarios 

 print (str)\str = "Graduaçao" 

 */ 

 
 
//*************************************************************************

//Inicializacão de variavel 

var name = "Eric Brito" 

name = "Erick Brito" 

 
 

//Criando constante ao inves de variavel 

let favoriteMobileSystem = "iOS"  

//Erro ao tentar alterar uma constante > favoriteMobileSystem = "Android" 



//*************************************************************************
//Utilizar emoji  
//ctrl + command + espaco 

var 👶🏻 = "Eriquinho" 

var age = 2 // Atribuiu int por inferencia de ser uma linguagem fortemente tipada 

var 💩 = "coco" 

//interpolacao \() 

var message = "\(👶🏻) tem \(age) anos e fez \(💩)" 

print (message) 

 
//*************************************************************************

//Tipos de variaveis 

//Bool, Double, Float, Int, String, Character... 

 

//Inteiros: Int 

var id: Int = 755 //int 8, 16, 32 e 64 

var anos: Int8 = 39 //ocupa menos memoria 

print(Int8.max , Int8.min) 

 

//Uint - somente numeros positivos 

//Uint 8, 16, 32 e 64 

var anos2: UInt8 = 39 //ocupa menos memoria 

print(UInt8.max , UInt8.min) 
 

//Booleanos 

var isActive: Bool = false 



//String 

var school = "FIAP" 

 
 

//Character 

var gender: Character = "M" 
 
 

//Float e Double 

let pi: Float = 3.1415 


//String 

let welcome = "Ölá\n\tseja bem-vindo a \"FIAP\"" 



//Novidade 

// let welcome2 = """kdjkldsjklfjd      slkfjdklsfskhfj dskf""" 

 
//*************************************************************************  
 

//Tupla, é um tipo formado por outros tipos, util em retorno do banco 

let address: (street: String,number: Int,zipCode: String,city: String,state: String) = ("Rua Butupuca",232,"05135-300", "Sao Paulo", "SP") 

print("O numero da minha casa é: \(address)") 

print("Eu moro em \(address.city)") 


//*************************************************************************   
 

//Exercicio, criar tupla estudante 

let student: (firstName: String, lastName: String, age: UInt8, course: String , grade: Double) = ("Jessica", "Moraes", 21, "iOS", 10) 

let newMessage = "Oi me chamo \(student.firstName) \(student.lastName), possuo \(student.age) anos e irei tirar \(student.grade) na matéria \(student.course)." 

print(newMessage) 


//*************************************************************************  
 

//Optionals - objeto pode estar nulo e futuramente obter valor 

//É errado nao inicializar - null é inicializacao tbm 

//nil = null  

//? - optional 

 

var cnh: String? = nil 

//cnh = "123136" 

//print("A minha cnh é \(cnh)") 


//*************************************************************************   

//Unwrapping - desembrulhar 

//print("A minha cnh é \(cnh)") 

//print("A minha cnh é \(cnh!)") //do lado direito desembrulha - errado de fazer, pode dar crash no app 



//*************************************************************************  
 

//Optional Binding - maneira segura de recuperar um conteudo optional 

if let cnh = cnh{ 

    print("A minha cnh é \(cnh)") 

} else { 

    print("Essa pessoa náo possui CNH") 

} 

//*************************************************************************   

//Nil Coalescing Operator (Operador de Coalescencia Nula) 

let myCNH: String = cnh ?? "Sem CNH" 

print(myCNH) 

 
 

 