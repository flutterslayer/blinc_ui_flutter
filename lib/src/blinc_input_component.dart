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
    bool enabled = true,
  }) {
    return BlincInputTextField(
      label: label,
      placeholder: placeholder,
      obscureText: false,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      descriptionText: descriptionText,
    );
  }

  static Widget dropdown() {
    return BlincInputTextField();
  }
}

class BlincInputTextField extends StatefulWidget {
  final String? label;
  final String? placeholder;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? descriptionText;
  final bool enabled;

  const BlincInputTextField({
    Key? key,
    this.label,
    this.placeholder,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.descriptionText,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<BlincInputTextField> createState() => _BlincInputTextFieldState();
}

class _BlincInputTextFieldState extends State<BlincInputTextField> {
  final FocusNode _focusNode = FocusNode();

  Color _borderColor = Colors.grey;

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
            border: Border.all(color: _borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            focusNode: _focusNode,
            keyboardType: TextInputType.number,
            enabled: widget.enabled,
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 10,
          ),
          child: Text(
            widget.descriptionText ?? '',
          ),
        ),
      ],
    );
  }
}


