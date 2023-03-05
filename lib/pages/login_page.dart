
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()){
                  setState(() {
                    changeButton = true;
                  });
                  
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, 
                  MyRoute.homeRoute);
                  setState(() {
                    changeButton = false;
                  });
    }
                
  }

  @override
  Widget build(BuildContext context) {

    return Material(
      
        color: Colors.white,
        child: SingleChildScrollView(
         
          child: Form(
            key: _formKey,
            child: Column(
            children: [
              Image.asset("assets/images/hey_image.png",fit: BoxFit.fill,),
              
                
            SizedBox(
              height: 15,
              ),
                  
            Text(
              "Welcome $name",
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
                  
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Username cannot be Empty";
                    }
                    return null;
                  },
                  onChanged: (value){
                    name = value;
                    setState(() {
            
                    });
                  },
                ),
                  
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Password cannot be Empty";
                    } else if(value.length<6){
                      return "Password should have atleast 6 characters";
                    }
                    return null;
                  },
                ),
                  
                SizedBox(
                height: 20,
                ),
                  
                InkWell(
                onTap: () => moveToHome(context),
                
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton?50: 150,
                  height: 50,                
                  alignment: Alignment.center,
                  child: changeButton
                  ? Icon(Icons.done,
                  color: Colors.white,
                  ) 
                  : Text("Login",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                  ),
                  ),
          
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(changeButton?20:6)
                  ),
          
                )
                )
          
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoute.homeRoute);
                //   },
                // )
                  
                ],
              ),
            )
                  
            ]
            ),
          ),
        )
      
      
      
    );
  }
}