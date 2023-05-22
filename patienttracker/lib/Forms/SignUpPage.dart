import 'package:flutter/material.dart';

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
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _firstName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Second Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your second name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _secondName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Third Name'),
                onChanged: (value) {
                  setState(() {
                    _thirdName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _lastName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Personal ID'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your personal ID';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _personalID = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _phone = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  // You can add additional email validation logic here
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              DropdownButtonFormField<String>(
                hint: Text("Type Of User"),
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
              TextFormField(
                decoration: InputDecoration(labelText: 'User Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a user name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _userName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
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

class PatientSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Gender'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your gender';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Disease Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your disease name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Degree of Severity'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the degree of severity';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Current Health State'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your current health state';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Oxygen'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your oxygen level';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Blood Pressure'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your blood pressure';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Blood Glucose Level'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your blood glucose level';
                }
                return null;
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
                  onPressed: () {
                    // Perform necessary actions on form submission
                    // Navigate to the next page or perform any other logic

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FamilyMemberSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Member Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Relationship to Patient'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your relationship to the patient';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Health Care Center (ID)'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the health care center ID';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Doctor (User Name)'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the doctor user name';
                }
                return null;
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
                  onPressed: () {
                    // Perform necessary actions on form submission
                    // Navigate to the next page or perform any other logic

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                  child: Text('Finish'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Medical Specialty'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your medical specialty';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Health Care Center (ID)'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the health care center ID';
                }
                return null;
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
                  onPressed: () {
                    // Perform necessary actions on form submission
                    // Navigate to the next page or perform any other logic

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                  child: Text('Finish'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('Next Page Content'),
      ),
    );
  }
}
