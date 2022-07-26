import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'registerUi.dart';

class CustomCheckBox extends FormField<bool> {
  Color errorColor;
  CustomCheckBox(
      {required FormFieldValidator<bool>? validator, required this.errorColor})
      : super(
            validator: validator,
            initialValue: false,
            builder: (state) {
              return CheckboxListTile(
                  title: const Text('Accept All Conditions'),
                  subtitle: state.hasError
                      ? Text(
                          state.errorText ?? '',
                          style: TextStyle(color: errorColor, fontSize: 12),
                        )
                      : const SizedBox(),
                  value: RegisterUi.checkBoxValue,
                  onChanged: (v) {
                    RegisterUi.checkBoxValue = v!;
                    state.didChange(v);
                  });
            });
}
