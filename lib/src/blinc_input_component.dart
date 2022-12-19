import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// The BlincInputComponent is responsible for creating Forms and Inputs.
/// BlincInputComponent.form() will create a form to wrap the inputs.
/// BlincInputComponent.input() will create an input that should be inside the form.
///
/// It accepts a [textEditingController] to control the form's content, a
/// [textInputType] to set the input tipe (e.g Mobile)
///
/// Pre-built validation functions can be added with [validator], for example
/// BlincInputComponent.validations.required
///
/// [label] will create the input's label, [placeholder] creates a placeholder
/// text inside. If set to true, [obscureText] will hide the content of the input.
///
/// Icons can be added with [prefixIcon], which will add an icon to the left,
/// or [suffixIcon], to the right.
///
/// The [descriptionText] is a text that will be placed below the input.
///
/// If [enabled] is false, the input will be disabled.
///
/// Example:
/// ```dart
/// BlincInputComponent.textField(
///     label: 'Label',
///     placeholder: 'Placeholder',
///     descriptionText: 'Description area',
///     suffixIcon: Icons.remove_red_eye_outlined,
///     prefixIcon: Icons.phone_outlined,
///     validator: BlincInputComponent.validations.required,
/// )
/// ```
class BlincInputComponent {
  /// [label] label text
  ///
  /// [placeholder] placeholder text
  ///
  /// [obscureText] hide the inserted content
  ///
  /// [prefixIcon] left icon
  ///
  /// [suffixIcon] right icon
  ///
  /// [descriptionText] text below input
  ///
  /// [enabled] on or off
  ///
  /// [textEditingController] controller
  ///
  /// [textInputType] keyboard type (Mobile)
  ///
  /// [validator]  Validation (Ex.: BlincInputComponent.validations.required)
  static Widget textField({
    String? label,
    String? placeholder,
    bool obscureText = false,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String? descriptionText,
    bool? enabled,
    TextEditingController? textEditingController,
    TextInputType? textInputType,
    FormFieldValidator<String>? validator,
  }) {
    return BlincInputTextField(
      label: label,
      placeholder: placeholder,
      obscureText: obscureText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      descriptionText: descriptionText,
      enabled: enabled,
      textEditingController: textEditingController,
      textInputType: textInputType,
      validator: validator,
    );
  }

  static Widget dropdown() {
    return const BlincInputTextField();
  }

  /// The form method creates a form to wrap the BlincInputComponent.input.
  /// It requires a [globalKey] key and a [child] widget.
  static Widget form({
    required GlobalKey<FormState> globalKey,
    required Widget child,
  }) {
    return BlincForm(
      globalKey: globalKey,
      child: child,
    );
  }

  static BlincInputValidation get validations => BlincInputValidation();
}

class BlincInputTextField extends StatefulWidget {
  /// Adds a label text
  final String? label;

  /// Adds a placeholder text
  final String? placeholder;

  /// If true, hides the text for passwords for example
  final bool obscureText;

  /// Sets the icon on the left side
  final IconData? prefixIcon;

  /// Sets the icon on the right side
  final IconData? suffixIcon;

  /// Sets the description text
  final String? descriptionText;

  /// If true, the field is enabled
  final bool? enabled;

  final TextEditingController? textEditingController;

  /// The type of information of the text input control.
  final TextInputType? textInputType;

  /// Signature for validating a form field.
  ///Returns an error string to display if the input is invalid, or null otherwise.
  final FormFieldValidator<String>? validator;

  const BlincInputTextField({
    Key? key,
    this.label,
    this.placeholder,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.descriptionText,
    this.enabled,
    this.textEditingController,
    this.textInputType,
    this.validator,
  }) : super(key: key);

  @override
  State<BlincInputTextField> createState() => _BlincInputTextFieldState();
}

class _BlincInputTextFieldState extends State<BlincInputTextField> {
  final FocusNode _focusNode = FocusNode();

  Color _borderColor = AppColors.colorNeutral_400;
  Color _labelColor = AppColors.colorNeutral_900;
  String? _errorMessage;

  static const boxConstraints = BoxConstraints(
    minWidth: 0,
    minHeight: 0,
  );

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _borderColor = _focusNode.hasFocus
            ? AppColors.colorNeutral_800
            : AppColors.colorNeutral_400;
        _labelColor = _focusNode.hasFocus
            ? AppColors.colorNeutral_800
            : AppColors.colorNeutral_900;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Color _borderStyleRule() {
    if (_errorMessage != null) {
      return AppColors.colorRedError_300;
    }

    return _borderColor;
  }

  Widget _iconSytleRule(
    IconData? icon, {
    bool suffixIcon = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.wsp,
        right: 10.wsp,
      ),
      child: icon != null
          ? Icon(
              suffixIcon == true && _errorMessage != null
                  ? Icons.new_releases_outlined
                  : icon,
              color: (suffixIcon == true && _errorMessage != null
                  ? AppColors.colorRedError_300
                  : AppColors.colorNeutral_800),
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.enabled == false ? AppColors.colorNeutral_50 : null,
            border: Border.all(
              color: _borderStyleRule(),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            obscureText: widget.obscureText,
            focusNode: _focusNode,
            keyboardType: widget.textInputType,
            enabled: widget.enabled,
            controller: widget.textEditingController,
            validator: (String? value) {
              if (widget.validator == null) {
                return null;
              }
              setState(() {
                _errorMessage = widget.validator!(value);
              });
              return _errorMessage;
            },
            decoration: InputDecoration(
              errorMaxLines: 1,
              errorStyle: TextStyle(
                color: Colors.transparent,
                fontSize: 0,
                height: -10.hsp,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 24.hsp),
              border: InputBorder.none,
              labelText: widget.label,
              hintText: widget.placeholder,
              prefixIconConstraints: boxConstraints,
              floatingLabelBehavior: widget.placeholder != null
                  ? FloatingLabelBehavior.always
                  : null,
              prefixIcon: _iconSytleRule(widget.prefixIcon),
              suffixIcon: _iconSytleRule(
                widget.suffixIcon,
                suffixIcon: true,
              ),
              labelStyle: TextStyle(
                color: _labelColor,
              ),
            ),
            style: TextStyle(
              color: widget.enabled == false
                  ? AppColors.colorNeutral_400
                  : AppColors.colorNeutral_900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.hsp,
            left: 10.wsp,
          ),
          child: Text(
            _errorMessage ?? widget.descriptionText ?? '',
            style: TextStyle(
              color: _errorMessage != null
                  ? AppColors.colorRedError_300
                  : AppColors.colorNeutral_800,
            ),
          ),
        ),
      ],
    );
  }
}

class BlincForm extends StatelessWidget {
  final Widget child;
  final GlobalKey<FormState> globalKey;

  const BlincForm({
    Key? key,
    required this.child,
    required this.globalKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: child,
    );
  }
}

class BlincInputValidation {
  String? required(
    String? value, {
    String? errorText = 'This field cannot be empty',
  }) {
    if (value == null || value.isEmpty) {
      return errorText;
    }
    return null;
  }

  String? validatePasscode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Passcode required';
    }
    if (value.isNotEmpty) {
      if (value.length < 8) {
        return 'Passcode must have 8 or more characters';
      }

      if (RegExp('[A-Z]').hasMatch(value) == false) {
        return 'Passcode must have an uppercase character';
      }

      for (var i = 0; i < value.length - 2; i++) {
        try {
          final first = int.tryParse(value[i]);
          final second = int.tryParse(value[i + 1]);
          final third = int.tryParse(value[i + 2]);

          if (first != null && second != null && third != null) {
            if (first == second && first == third) {
              return 'Passcode cannot contain 3 or more equal numbers';
            }

            if (first == second - 1 && first == third - 2) {
              return 'Passcode cannot contain sequence of 3 or more numbers';
            }
          }
        } catch (e) {
          return 'Invalid Password. Please review it.';
        }
      }
    }
    return null;
  }

  String? validateDateOfBirth(String? value) {
    if (value == null || value.isEmpty) {
      return 'You need to informe a date.';
    }
    try {
      final data = DateFormat('M/d/y').parseStrict(value);
      final now = DateTime.now();
      if (data.isAfter(DateTime(now.year - 18, now.month, now.day))) {
        return 'You must be 18 or older to create an\n account.';
      }
      if (data.isBefore(DateTime(1900))) {
        return 'Please enter a valid date.';
      }
    } catch (e) {
      return 'Please enter a date in mm/dd/yyyy format.';
    }
    return null;
  }

  String? validateName(String? value) {
    if (value == null || value.length < 3) {
      return 'Enter your Name';
    }
    return null;
  }

  String? validateCellPhone(String? value) {
    if (value == null || value.length < 14) {
      return 'Please enter a valid a phone number';
    }
    return null;
  }

  String? validateMail(String? value) {
    final valid = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(value ?? '');

    if (!valid) {
      return 'Please enter a valid e-mail';
    }
    return null;
  }

  bool isValidEmail(String value) {
    return RegExp(
      r'''
^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$''',
    ).hasMatch(value);
  }
}
