import 'package:flutter/material.dart';
import 'package:patienttracker/Pages/CenterPages/HomePage.dart';

import '../Widget/textFormFieldDecoration.dart';

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
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("First Name"),
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
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("Second Name"),
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
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("Third Name"),
                      onChanged: (value) {
                        setState(() {
                          _thirdName = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: textFormFieldDecoration("Last Name"),
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
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Personal ID"),
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
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Phone"),
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
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Email"),
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
                decoration: textFormFieldDecoration("User Name"),
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
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Password"),
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
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: textFormFieldDecoration("Confirm Password"),
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

class PatientSignUpPage extends StatefulWidget {
  @override
  State<PatientSignUpPage> createState() => _PatientSignUpPageState();
}

class _PatientSignUpPageState extends State<PatientSignUpPage> {
  String? _gender;
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
              decoration: textFormFieldDecoration('Disease Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your disease name';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Degree of Severity'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the degree of severity';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Current Health State'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your current health state';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Oxygen'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your oxygen level';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Blood Pressure'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your blood pressure';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Blood Glucose Level'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your blood glucose level';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
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
                  _gender = value;
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'Female',
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value;
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
                  onPressed: () {
                    // Perform necessary actions on form submission
                    // Navigate to the next page or perform any other logic

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientSignUpPage2()),
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

class PatientSignUpPage2 extends StatelessWidget {
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
              decoration: textFormFieldDecoration('FamilyMember(UserName)'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your FamilyMember(UserName)';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Doctor(UserName)'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Doctor(UserName)';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('HealthcareCenter (ID)'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your HealthcareCenter (ID)';
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CenterHome()),
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
              decoration: textFormFieldDecoration('Relationship to Patient'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your relationship to the patient';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Health Care Center (ID)'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the health care center ID';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Doctor (User Name)'),
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
                      MaterialPageRoute(builder: (context) => CenterHome()),
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
              decoration: textFormFieldDecoration('Medical Specialty'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your medical specialty';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: textFormFieldDecoration('Health Care Center (ID)'),
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
                      MaterialPageRoute(builder: (context) => CenterHome()),
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
