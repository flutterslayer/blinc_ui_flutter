import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class BlincInputComponent {
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
      obscureText: false,
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
    return BlincInputTextField();
  }

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
  final String? label;
  final String? placeholder;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? descriptionText;
  final bool? enabled;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.enabled == false ? AppColors.colorNeutral_50 : null,
            border: Border.all(color: _borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
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

              return null;
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 24),
              border: InputBorder.none,
              labelText: widget.label,
              hintText: widget.placeholder,
              prefixIconConstraints: boxConstraints,
              floatingLabelBehavior: widget.placeholder != null
                  ? FloatingLabelBehavior.always
                  : null,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: widget.prefixIcon != null
                    ? Icon(
                        widget.prefixIcon,
                        color: AppColors.colorNeutral_800,
                      )
                    : null,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: widget.suffixIcon != null
                    ? Icon(
                        widget.suffixIcon,
                        color: AppColors.colorNeutral_800,
                      )
                    : null,
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
          padding: const EdgeInsets.only(
            top: 8,
            left: 10,
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
}
