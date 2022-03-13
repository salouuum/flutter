
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var FormKey = GlobalKey<FormState>();

  bool ispassword =true;

  IconData icon = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: FormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    validate: (value){
                      if (value!.isEmpty){
                        return 'to login you have to enter email address';
                      }
                    },
                    label: 'Email Address',
                    icon: Icon (Icons.email_outlined),
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    validate: (value){
                      if (value!.isEmpty){
                        return 'to login you have to enter password';
                      }
                    },
                    label: 'Password',
                    icon: Icon (Icons.lock_outline),
                    type: TextInputType.visiblePassword,
                    sufficon: IconButton(
                      onPressed: (){
                        setState(() {
                          ispassword = !ispassword;
                          icon = ispassword?Icons.remove_red_eye:Icons.visibility_off;
                        });
                      },
                      icon: Icon(icon),
                    ),
                    obsecure: ispassword,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: (){
                      if(FormKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: 'sign up',
                    function: () {
                      if (FormKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
