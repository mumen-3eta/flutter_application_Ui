import 'package:flutter/material.dart';
import 'package:flutter_application_1/instgram/ViewInfoUi.dart';
import 'package:flutter_application_1/instgram/customCheckBox.dart';
import 'package:flutter_application_1/instgram/customTextField.dart';
import 'package:string_validator/string_validator.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';

import '../data/dropBoxData.dart';
import '../sp_exe/spHelper.dart';
import 'NavigationConstants.dart';

class RegisterUi extends StatefulWidget {
  static bool checkBoxValue = false;
  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool firstSubmit = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? countryCode = '+970';
  Country? selectedCountry;
  String? selectedCity;
  Color errorColor = ThemeData().errorColor;

  requiredValidator(String value) {
    if (value.length < 3) {
      return 'name must have 3 or more characters';
    }
  }

  emailValidator(String value) {
    if (!isEmail(value)) {
      return 'not valied email';
    }
  }

  phoneValidator(String value) {
    if (value.length < 4 || value.length > 10) {
      return 'phone must be eather 9 or 10 numbers';
    }
  }

  String? checkBoxValidarot(bool? x) {
    if (!(x!)) {
      return 'you have to accept our conditions first';
    }
    return null;
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Form(
              key: formKey,
              autovalidateMode: firstSubmit
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                      title: 'name',
                      validator: requiredValidator,
                      controller: nameController),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                      title: 'email',
                      keyBoard: TextInputType.emailAddress,
                      validator: emailValidator,
                      controller: emailController),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    title: 'phone',
                    keyBoard: TextInputType.phone,
                    validator: phoneValidator,
                    controller: phoneController,
                    suffix: CountryCodePicker(
                      onChanged: (value) {
                        countryCode = value.dialCode;
                      },
                      initialSelection: 'PS',
                      showOnlyCountryWhenClosed: false,
                      showCountryOnly: false,
                      alignLeft: false,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(
                          20,
                        )),
                    child: DropdownButton<Country>(
                        hint: const Text('country'),
                        isExpanded: true,
                        underline: const SizedBox(),
                        value: selectedCountry,
                        items: countries.map((e) {
                          return DropdownMenuItem<Country>(
                            value: e,
                            child: Text(e.name),
                          );
                        }).toList(),
                        onChanged: (v) {
                          selectedCountry = v;
                          selectedCity = v!.cities.first;
                          setState(() {});
                        }),
                  ),
                  (selectedCountry == null && firstSubmit)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'you must select a country first',
                                style:
                                    TextStyle(color: errorColor, fontSize: 12),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(
                          height: 10,
                        ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(
                          20,
                        )),
                    child: DropdownButton<String>(
                        hint: const Text('city'),
                        isExpanded: true,
                        underline: const SizedBox(),
                        value: selectedCity,
                        items: selectedCountry?.cities.map((e) {
                          return DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          );
                        }).toList(),
                        onChanged: (v) {
                          selectedCity = v;
                          setState(() {});
                        }),
                  ),
                  CustomCheckBox(
                    validator: checkBoxValidarot,
                    errorColor: errorColor,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        firstSubmit = true;
                        setState(() {});
                        if (formKey.currentState!.validate()) {
                          SPhelper.sPhelper.saveNewUser(
                              name: nameController.text,
                              email: emailController.text,
                              phone: phoneController.text,
                              country: selectedCountry!.name,
                              city: selectedCity!);

                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          selectedCountry = null;
                          selectedCity = null;
                          firstSubmit = false;
                          RegisterUi.checkBoxValue = false;
                          setState(() {});
                        }
                      },
                      child: const Text('Register'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
