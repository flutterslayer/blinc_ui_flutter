import 'package:blinc_ui_flutter/src/blinc_colors.dart';
import 'package:flutter/material.dart';

class BlincInputDropdown extends StatefulWidget {
  final String? label;
  final String? placeholder;
  final bool obscureText;
  final IconData? prefixIcon;
  final String? descriptionText;
  final bool? enabled;
  String? value;
  final List? options = ['1', '2'];

  BlincInputDropdown({
    Key? key,
    this.label,
    this.placeholder,
    this.obscureText = false,
    this.prefixIcon,
    this.descriptionText,
    this.enabled,
    this.value,
  }) : super(key: key);

  @override
  State<BlincInputDropdown> createState() => _BlincInputDropdownState();
}

class _BlincInputDropdownState extends State<BlincInputDropdown> {
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
            color: widget.enabled == false ? AppColors.colorNeutral_50 : null,
            border: Border.all(color: _borderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: FormField(
            builder: (FormFieldState state) {
              return InputDecorator(
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
                ),
                isEmpty: widget.value == null || widget.value == '',
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isDense: true,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      value: widget.value,
                      onChanged: (value) {
                        setState(() {
                          widget.value = value;
                          state.didChange(value);
                        });
                      },
                      items: widget.options!.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
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
            widget.descriptionText ?? '',
          ),
        ),
      ],
    );
  }
}
