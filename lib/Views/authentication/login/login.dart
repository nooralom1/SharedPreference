import 'package:flutter/material.dart';
import 'package:sharedpreference/Views/authentication/login/widgets/custom_txt_frm_fld.dart';
import 'package:sharedpreference/Views/screens/Home.dart';
import 'package:sharedpreference/global_widgets/global_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomGlobalText(
          text: 'Login',
          textColor: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 35,
                child: Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTxtFrmFld(
                labelText: 'Email',
                hintText: 'mr.noor165@gmail.com',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTxtFrmFld(
                labelText: 'Password',
                hintText: '***********',
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: CustomGlobalText(
                    text: 'Save',
                    textColor: Colors.white,
                    textSize: 22,
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}