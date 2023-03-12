// import "package:http/http.dart" as http;
// import 'dart:convert';
// import 'dart:io';
// void main() {
  

//  int numeros = 1; /// enteros
  
//  double decimales = 1.2;/// reales
  
//  String nombres = "Flutter"; /// Para caracteres
  
//  bool acierto = false; /// tipo  boleanas
  
//  List lista = [1,3,5,"flutter"];/// listas dinamicas
//  List<String> listaStrings= ["Flutter", "forward"]; /// Lista de tipo de datos
//  List<int> listaEnteros =[1,2,3,4,5];/// Lista de enteros
//  List<bool> listaBolean = [false,true]; /// Lista de boleanos
  
//  // Mapa de datos
//  Map<String,dynamic> map = 
//  {
//    "nombre":"Andrea",
//    "edad":12,
//    "estado":false
//  };
  
//  /// tipo de datos inmutable
//  var data = lista.toSet();
  
//  final String info = "variable de final";
  
//  const String constante = "Solo se define una vez";
  
//   AreaCalculator.computeAre(shape:Rectangle(width:10.2, heigth:2));
//   AreaCalculator.computeAre(shape:Triangle(width:10.2, heigth:2));
 
// }

// /// Funcion no devuelve nada
// void funcionBool(){}

// /// funcion que devuelve un tipo de dato
// String funciones ()=> "Test string";

// /// funcion de datos que recibe un valor
// String funcion(String data) => "mostrar data : $data";

// /// funciones con parametros
// int funVariable(int a, int b, int c) => 2;
// int funInt({required int a, int b = 0, int ? c}) => 2;
// void funcionCompuesta (int a, {required int b, required c}){}

// class Usuario{
//   Usuario({
//     required this.nombre,
//     this.edad,
//     this.estado = false
//   });
  
//   String nombre;
//   int? edad;
//   bool estado;
  
//   static String state = "estatico";
  
//   void _funcionPrivada(){}
//   void funcionCompuesta (int a, {required int b, required c}){}
//   void getdata(){}
// }

// class SignIn{
//   Future<void> authServer({required String userName, required String password})async{
//    try{
//       var res =  AuthRepository.signInServer(userName:"Fulanito",password:"123456");
//        if(res == null){
//        print("is Auth");
//       }else{
//        print("Auth failed");
//       }
//     }
//    }catch(e){
//      print(e);
//    }
// }

// class AuthRepository{
//   static Future<User?> signInServer({required String userName, required String password})async{
//     try{
//        var _token ="krerssw4cdDKESmewewerwcsdcsdfgresdsdsdcsd";

//       var url = Uri.parse("https://example.com/auth");
//       var res =
//           await http.post(url, body: jsonEncode(<String,dynamic>{
//             "username":userName,
//             "password":password
//           }), headers: {
//         HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
//         HttpHeaders.authorizationHeader: _token
//       });
//       return userFromJson(res.body);
//     }catch(e){
//       rethrow;
//     }
//   }
// }

// User userFromJson(String str) => User.fromJson(json.decode(str));

// String userToJson(User data) => json.encode(data.toJson());

// class User {
//     User({
//         required this.userName,
//         required this.edad,
//         required this.email,
//     });

//     String userName;
//     int edad;
//     String email;
//     factory User.fromJson(Map<String, dynamic> json) => User(
//         userName: json["userName"],
//         edad: json["edad"],
//         email: json["email"],
//     );
//     Map<String, dynamic> toJson() => {
//         "userName": userName,
//         "edad": edad,
//         "email": email,
//     };
// }


// abstract class IShape{
//   double area();
// }

// class Rectangle implements IShape{
//   double width;
//   double heigth;
  
//   Rectangle({required this.heigth,required this.width});
//   double area(){
//     return width * heigth;
//   }
  
// }

// class Triangle implements IShape{
//   double width;
//   double heigth;
//   Triangle({required this.width, required this.heigth});
//   double area(){
//     return width * heigth / 2;
//   }
// }


// class AreaCalculator{
//   static double computeAre({required IShape shape }){
//     return shape.area();
//   }
// }

// class Calculator{
//   static double area(int tipo, double width, double heigth){
//     switch (tipo) {
//     case 1: // rectangulo
//       return width * heigth;
//     case 2: // Triangulo
//       return width * heigth /2;
//     default:
//         return 0;
//   }
//   } 
// }


// abstract class Dog{
//   void run(){}
//   void eat(){}
//   void bark(){}
// }

// class ToyDog implements Dog{
//   void run(){}
//   void eat(){}
//   void bark(){}
// }



// class Repository {
//   static Future<User?>getData() async {
//     var data = ServerSQL.find("Select * from User where id=2");
//     return data;
//   }
// }

// class BlocData {
//   void connected() {
//     var res = await Repository.getData();
//     print(res);
//   }
// }
