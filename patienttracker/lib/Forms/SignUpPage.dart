import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:patienttracker/Pages/CenterPages/HomePage.dart';
import 'package:patienttracker/Widget/Dialogs/DialogEnableDisableAccount.dart';
import '../Widget/textFormFieldDecoration.dart';

///////////////////////////////////////////////////////////
///   SignUp Page
///////////////////////////////////////////////////////////
///
///
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _userType = 'patient'; // Default user type is 'patient'
  String _firstName = '';
  String _secondName = '';
  String _thirdName = '';
  String _lastName = '';
  String _personalID = '';
  String _phone = '';
  String _email = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform form submission logic here

      // Navigate to the appropriate page based on the user type
      if (_userType == 'patient') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PatientSignUpPage()),
        );
      } else if (_userType == 'familyMember') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FamilyMemberSignUpPage()),
        );
      } else if (_userType == 'doctor') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DoctorSignUpPage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("First Name*"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your first name';
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return 'First Name can only \ncontain letters';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _firstName = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("Second Name*"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your second name';
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return 'First Name can only \ncontain letters';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _secondName = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("Third Name*"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your third name';
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return 'First Name can only \ncontain letters';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _thirdName = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("Last Name*"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your last name';
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return 'First Name can only \ncontain letters';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _lastName = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Personal ID*"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your personal ID';
                  }
                  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Please enter only numeric characters';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _personalID = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Phone*"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                    return 'Invalid phone number';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _phone = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Email*"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!EmailValidator.validate(value)) {
                    return 'Invalid email address';
                  }

                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              DropdownButtonFormField<String>(
                decoration: textFormFieldDecoration("Type Of User"),
                value: _userType,
                items: [
                  DropdownMenuItem(
                    value: 'patient',
                    child: Text('Patient'),
                  ),
                  DropdownMenuItem(
                    value: 'familyMember',
                    child: Text('Family Member'),
                  ),
                  DropdownMenuItem(
                    value: 'doctor',
                    child: Text('Doctor'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _userType = value!;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("User Name*"),
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
                    _userName = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Password*"),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
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
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Confirm Password*"),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _confirmPassword = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////
///   Patient SignUp Page
///////////////////////////////////////////////////////////
///

class PatientSignUpPage extends StatefulWidget {
  @override
  State<PatientSignUpPage> createState() => _PatientSignUpPageState();
}

class _PatientSignUpPageState extends State<PatientSignUpPage> {
  final _formKey2 = GlobalKey<FormState>();
  String _gender = '';
  String _diseaseName = '';
  String _degreeOfSeverity = '';
  String _currentHealthState = '';
  String _oxygen = '';
  String _bloodPressure = '';
  String _bloodGlucoseLevel = '';
  String _age = '';
  bool _value = true;

  void _submitForm() {
    if (_formKey2.currentState!.validate()) {
      // Form is valid, perform form submission logic here
      if (!_value)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PatientSignUpPage2()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: textFormFieldDecoration('Disease Name*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your disease name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _diseaseName = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Degree of Severity*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the degree of severity';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _degreeOfSeverity = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Current Health State*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your current health state';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _currentHealthState = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Oxygen'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _oxygen = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Blood Pressure'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _bloodPressure = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Blood Glucose Level'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _bloodGlucoseLevel = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Age*'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _age = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "Gender :",
                  style: TextStyle(
                      fontSize: 18, decoration: TextDecoration.underline),
                ),
              ),
              RadioListTile(
                title: Text('Male'),
                value: 'Male',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                    _value = false;
                  });
                },
              ),
              RadioListTile(
                title: Text('Female'),
                value: 'Female',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value!;
                    _value = false;
                  });
                },
              ),
              Visibility(
                visible: _value,
                child: Text(
                  "You must select your gender",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////
///   Patient SignUp Page2
///////////////////////////////////////////////////////////
///

class PatientSignUpPage2 extends StatefulWidget {
  @override
  State<PatientSignUpPage2> createState() => _PatientSignUpPage2State();
}

class _PatientSignUpPage2State extends State<PatientSignUpPage2> {
  String _familyMemberUserName = '';
  String _doctorUserName = '';
  String _healthCareCenterID = '';
  final _formKey2 = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey2.currentState!.validate()) {
      // Form is valid, perform form submission logic here

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CenterHome()),
      );
      dialogCreateAccount(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: textFormFieldDecoration('FamilyMember(UserName)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _familyMemberUserName = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Doctor(UserName)'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _doctorUserName = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Finish'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////
///   FamilyMember SignUp Page
///////////////////////////////////////////////////////////
///

class FamilyMemberSignUpPage extends StatefulWidget {
  @override
  State<FamilyMemberSignUpPage> createState() => _FamilyMemberSignUpPageState();
}

class _FamilyMemberSignUpPageState extends State<FamilyMemberSignUpPage> {
  String _relationshipToPatient = '';
  String _doctorUserName = '';
  String _healthCareCenterID = '';
  final _formKey2 = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey2.currentState!.validate()) {
      // Form is valid, perform form submission logic here

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CenterHome()),
      );
      dialogCreateAccount(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Member Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: textFormFieldDecoration('Relationship to Patient'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _relationshipToPatient = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration('Doctor (User Name)'),
                validator: (value) {
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _doctorUserName = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Finish'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////
///   Doctor SignUp Page
///////////////////////////////////////////////////////////
///
class DoctorSignUpPage extends StatefulWidget {
  @override
  State<DoctorSignUpPage> createState() => _DoctorSignUpPageState();
}

class _DoctorSignUpPageState extends State<DoctorSignUpPage> {
  String _medicalSpecialty = '';
  String _healthCareCenterID = '';
  final _formKey2 = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey2.currentState!.validate()) {
      // Form is valid, perform form submission logic here

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CenterHome()),
      );
      dialogCreateAccount(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: textFormFieldDecoration('Medical Specialty*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your medical specialty';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _medicalSpecialty = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Finish'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
