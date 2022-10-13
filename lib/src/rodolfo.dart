import 'package:blinc_ui_flutter/src/blinc_colors.dart';
import 'package:flutter/material.dart';

class BlincInputDropdown extends StatefulWidget {
  List? dropdownOptions;
  final String? label;
  final String? placeholder;
  final bool obscureText;
  final IconData? prefixIcon;
  final String? descriptionText;
  final bool enabled;
  String? currentInputValue;
  FormFieldValidator<String>? validator;

  BlincInputDropdown({
    Key? key,
    required this.dropdownOptions,
    this.label,
    this.placeholder,
    this.obscureText = false,
    this.prefixIcon,
    this.descriptionText,
    this.enabled = true,
    this.currentInputValue,
    this.validator,
  }) : super(key: key);

  @override
  State<BlincInputDropdown> createState() => _BlincInputDropdownState();
}

class _BlincInputDropdownState extends State<BlincInputDropdown> {
  final FocusNode _focusNode = FocusNode();
  String? _errorMessage;
  Color _borderColor = Colors.grey;

  static const boxConstraints = BoxConstraints(
    minWidth: 0,
    minHeight: 0,
  );
  Color _borderStyleRule() {
    if (_errorMessage != null) {
      return AppColors.colorRedError_300;
    }

    return _borderColor;
  }

  @override
  void initState() {
    super.initState();
    if (!widget.enabled) {
      widget.dropdownOptions = [];
    }
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
            color: !widget.enabled ? AppColors.colorNeutral_50 : null,
            border: Border.all(color: _borderStyleRule()),
            borderRadius: BorderRadius.circular(8),
          ),
          child: FormField(
            enabled: widget.enabled,
            validator: (String? value) {
              if (widget.validator == null || !widget.enabled) {
                return null;
              }
              setState(() {
                _errorMessage = widget.validator!(value);
              });
              return _errorMessage;
            },
            builder: (FormFieldState state) {
              return InputDecorator(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 24),
                  border: InputBorder.none,
                  labelText: widget.label,
                  hintText: widget.placeholder,
                  prefixIconConstraints: boxConstraints,
                  floatingLabelBehavior: widget.label != null
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
                ),
                isEmpty: widget.currentInputValue == null ||
                    widget.currentInputValue == '',
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      style: TextStyle(
                        color: !widget.enabled
                            ? AppColors.colorNeutral_400
                            : AppColors.colorNeutral_900,
                      ),
                      isDense: false,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 40,
                      ),
                      value: widget.currentInputValue,
                      onChanged: (currentValue) {
                        setState(() {
                          widget.currentInputValue = currentValue;
                          state.didChange(currentValue);
                        });
                      },
                      items: widget.dropdownOptions!.map((currentValue) {
                        return DropdownMenuItem<String>(
                          value: currentValue,
                          child: Text(currentValue),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              );
            },
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
