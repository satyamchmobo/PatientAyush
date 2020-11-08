import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:practo/home.dart';


import 'package:flutter/cupertino.dart';

import 'package:language_pickers/languages.dart';
import 'package:language_pickers/language_pickers.dart';
import 'package:practo/main.dart';

class StepperForm extends StatefulWidget {
  @override
  _StepperFormState createState() => _StepperFormState();
}

class _StepperFormState extends State<StepperForm> {
  int _currentStep = 0;
  String curCountry;
  String curState;
  String curCity;
   String curLang ;
   
  List<String> cities = [
    'Bangalore',
    'Chennai',
    'New York',
    'Mumbai',
    'Delhi',
    'Tokyo',
  ];

  List<String> states = [
    'Madhya Pradesh',
    'Maharashtra',
    'Tamil Nadu',
    'Mumbai',
    'Delhi',
    'Tokyo',
  ];

  List<String> countries = [
    'INDIA',
    'USA',
    'JAPAN',
  ];


Language _selectedDropdownLanguage =
      LanguagePickerUtils.getLanguageByIsoCode('ko');
  Language _selectedDialogLanguage =
      LanguagePickerUtils.getLanguageByIsoCode('ko');
  Language _selectedCupertinoLanguage =
      LanguagePickerUtils.getLanguageByIsoCode('ko');

  // It's sample code of Dropdown Item.
  Widget _buildDropdownItem(Language language) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 8.0,
        ),
        Text("${language.name} (${language.isoCode})"),
      ],
    );
  }

  // It's sample code of Dialog Item.
  Widget _buildDialogItem(Language language) => Row(
        children: <Widget>[
          Text(language.name),
          SizedBox(width: 8.0),
          Flexible(child: Text("(${language.isoCode})"))
        ],
      );

  void _openLanguagePickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
            data: Theme.of(context).copyWith(primaryColor: Colors.pink),
            child: LanguagePickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.pinkAccent,
                searchInputDecoration: InputDecoration(hintText: 'Search...'),
                isSearchable: true,
                title: Text('Select your language'),
                onValuePicked: (Language language) => setState(() {
                      _selectedDialogLanguage = language;
                      print(_selectedDialogLanguage.name);
                      print(_selectedDialogLanguage.isoCode);
                    }),
                itemBuilder: _buildDialogItem)),
      );

  // It's sample code of Cupertino Item.
  void _openCupertinoLanguagePicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return LanguagePickerCupertino(
          pickerSheetHeight: 200.0,
          onValuePicked: (Language language) => setState(() {
                _selectedCupertinoLanguage = language;
                print(_selectedCupertinoLanguage.name);
                print(_selectedCupertinoLanguage.isoCode);
              }),
        );
      });

  Widget _buildCupertinoItem(Language language) => Row(
        children: <Widget>[
          Text("+${language.name}"),
          SizedBox(width: 8.0),
          Flexible(child: Text(language.name))
        ],
      );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
   
      body: SingleChildScrollView(
              child: Column(
          children: [
            SizedBox(height: 70,),
           Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text('Your Profile', style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w500))
                                  ),
            Stepper(
            
              steps: _stepper(),
              physics: ClampingScrollPhysics(),
              currentStep: this._currentStep,
              onStepTapped: (step) {
                setState(() {
                  this._currentStep = step;
                });
              },
              onStepContinue: () {
                setState(() {
                  if (this._currentStep < this._stepper().length - 1) {
                    this._currentStep = this._currentStep + 1;
                  } else {
                                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
  );
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (this._currentStep > 0) {
                    this._currentStep = this._currentStep + -1;
                  } else {
                    this._currentStep = 0;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
          title: Text("Name"),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "First Name"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "last Name"),
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: StepState.complete),
      Step(
          title: Text("Email"),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Email id"),
              )
            ],
          )),
      Step(
          title: Text("Address"),
          content: Column(
            children: [
              DropDownField(
                  value: curCountry,
                  icon: Icon(Icons.map),
                  //required: true,
                  hintText: 'Choose a country',
                  labelText: 'Country',
                  items: countries,
                  setter: (dynamic newValue) {
                    curCountry = newValue;
                  }),
                  SizedBox(height: 11,),
              DropDownField(
                  value: curState,
                  //required: true,
                  // strict: true,
                  hintText: 'Choose a state',
                  labelText: 'State',
                  icon: Icon(Icons.account_balance),
                  items: states,
                  setter: (dynamic newValue) {
                    curState = newValue;
                  }),

                      SizedBox(height: 11,),

              DropDownField(
                
                  value: curCity,
                 // required: true,
                  // strict: true,
                  hintText: 'Choose a city',
                  labelText: 'City',
                  icon: Icon(Icons.account_balance),
                  items: cities,
                  setter: (dynamic newValue) {
                    curCity = newValue;
                  }),

                   Container(
                     width: 240,
                     child: Row(
                       children: [
                         Flexible(child: Icon(Icons.gps_fixed,color: Colors.blue,)),
                         SizedBox(width: 30,),
                         Flexible(
                                                    child: TextFormField(
                decoration: InputDecoration(labelText: "Zip Code",
                ),
              ),
                         ),
                       ],
                     ),
                   ),

                      SizedBox(height: 11,),
            ],
          )),

           Step(
             
          title: Text("Language"),
          
          content: Column(
            children: [
            LanguagePickerDropdown(
                    initialValue: 'en',
                    itemBuilder: _buildDropdownItem,
                    onValuePicked: (Language language) {
                      _selectedDropdownLanguage = language;
                      print(_selectedDropdownLanguage.name);
                      print(_selectedDropdownLanguage.isoCode);
                    },
                  ),
               
              
              // Expanded(
              //   child: Center(
              //     child: MaterialButton(
              //       child: Text("Push"),
              //       onPressed: _openLanguagePickerDialog,
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Center(
              //     child: ListTile(
              //       title: _buildCupertinoItem(_selectedCupertinoLanguage),
              //       onTap: _openCupertinoLanguagePicker,
              //     ),
              //   ),
              // ),
                  
            ],
          )),
    ];
    return _steps;
  }
}
