import 'package:flutter/material.dart';
import 'package:patienttracker/globalVar/globalvar.dart';
import '../Pages/CenterPages/HomePage.dart';
import '../Pages/PatientPages/PatientHome.dart';
import '../Widget/Dialogs/ErrorLogin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Icon.png',
          height: 50,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50.0, 10, 50, 50),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              const ListTile(
                title: Expanded(
                    child: Text(
                  "Patient-Tracker",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              const SizedBox(height: 30),
              const ListTile(
                  title: Text(
                "Sign in",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              ListTile(
                title: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green, width: 1.5),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Username';
                    }
                    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                      return 'Username can only contain letters,\nnumbers, and underscores';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0.0,
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green, width: 1.5),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                      return 'Password can only contain letters,\nnumbers, and underscores';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: Implement login logic
                      // Check user credentials and navigate to the appropriate screen
                      if (_email == 'center' && _password == 'password') {
                        userName = 'center';
                        typeOfUser = 'center';
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CenterHome(),
                          ),
                        );
                      } 
                      else if (_email == 'patient' &&
                          _password == 'password') {
                        userName = 'patient';
                        typeOfUser = 'patient';
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientHome(),
                          ),
                        );
                      } 
                      else if (_email == 'doctor' &&
                          _password == 'password') {
                        userName = 'doctor';
                        typeOfUser = 'doctor';
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientHome(),
                          ),
                        );
                      } 
                      else if (_email == 'familymember' &&
                          _password == 'password') {
                        userName = 'familymember';
                        typeOfUser = 'familymember';
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientHome(),
                          ),
                        );
                      } 
                      else {
                        ErrorLogin(context);
                      }
                    }
                  },
                  child: Text('Login'),
                ),
              ),
              ListTile(
                title: InkWell(
                  onTap: () {},
                  child: const Text(
                    'forgot password?',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
