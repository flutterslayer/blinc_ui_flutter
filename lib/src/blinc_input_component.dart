import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  ///A method from [BlincInputComponent] that renders a text field with Blinc's style.
  ///All the parameters are optional.
  ///
  /// [label] Label text.
  ///
  /// [placeholder] Placeholder text.
  ///
  /// [obscureText] Hide the inserted content.
  ///
  /// [prefixIcon] Left icon.
  ///
  /// [suffixIcon] Right icon
  ///
  /// [descriptionText] Text below input.
  ///
  /// [enabled] On or off.
  ///
  /// [textEditingController] Controls the text being edited.
  ///
  /// [textInputType] Keyboard type (Mobile).
  ///
  /// [validator]  Validation (Ex.: BlincInputComponent.validations.required).
  ///
  /// [errorMessage] Error message displayed below the input, with proper styling.
  ///
  /// [onChanged] Calls the function whenever the user edit the text.
  ///
  /// [focusNode] An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events.
  ///
  /// [inputFormatters] Sets a list of input formatters for the field.
  static Widget textField({
    String? label,
    String? placeholder,
    bool obscureText = false,
    IconData? prefixIcon,
    IconData? suffixIcon,
    String? descriptionText,
    bool enabled = true,
    TextEditingController? textEditingController,
    TextInputType? textInputType,
    FormFieldValidator<String>? validator,
    String? errorMessage,
    void Function(String?)? onChanged,
    FocusNode? focusNode,
    List<TextInputFormatter>? inputFormatters,
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
      errorMessage: errorMessage,
      onChanged: onChanged,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
    );
  }

  static Widget passwordField({
    String? label,
    String? placeholder,
    bool obscureText = true,
    bool changeableObscureText = true,
    IconData? prefixIcon,
    IconData? suffixIcon = Icons.visibility_off_outlined,
    IconData? secondSuffixIcon = Icons.visibility_outlined,
    IconData? errorIcon = Icons.visibility_off_outlined,
    String? descriptionText,
    bool enabled = true,
    TextEditingController? textEditingController,
    TextInputType? textInputType,
    FormFieldValidator<String>? validator,
    String? errorMessage,
    void Function(String?)? onChanged,
    FocusNode? focusNode,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return BlincInputTextField(
      label: label,
      placeholder: placeholder,
      obscureText: obscureText,
      changeableObscureText: changeableObscureText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      secondSuffixIcon: secondSuffixIcon,
      errorIcon: errorIcon,
      descriptionText: descriptionText,
      enabled: enabled,
      textEditingController: textEditingController,
      textInputType: textInputType,
      validator: validator,
      errorMessage: errorMessage,
      onChanged: onChanged,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
    );
  }

  ///A method from [BlincInputComponent] that renders a dropdown with Blinc's style.
  ///It requires two parameters, a list of options and onChanged callback.
  ///
  ///[dropdownOptions] A list of items that the user can select.
  ///
  ///[onChanged] Called when the user selects an item.
  ///
  ///[customOptionBuilder] A builder to customize the dropdown options.
  ///
  ///[label] Optional text that describes the input field.
  ///
  ///[placeholder] An optional text positioned at the center-start of the input. Usually used to transport information.
  ///
  ///[initialValue] Initiates with null, An optional value to initialize the dropdown value field to, or null otherwise.
  ///
  ///[prefixIcon] Leading icon, positioned inside the input at left.
  ///
  ///[descriptionText] Text displayed below the input.
  ///
  ///[enabled] Initiates with true, if false, the dropdown field is disabled, it ignores taps and its decoration is rendered in grey.
  ///
  ///[hasBlankOption] Initiates with false, if true, a blank option is added as first option to dropdown's options.
  ///
  ///[validator] Function that receives any validation and is executed on a submit action. (Ex.: BlincInputComponent.validations.required).
  ///
  ///[errorMessage] Error message displayed below the input, with proper styling.
  static Widget dropdown({
    required List? dropdownOptions,
    required void Function(String? value, int? index) onChanged,
    Widget Function(String value, int index)? customOptionBuilder,
    String? label,
    String? placeholder,
    String? initialValue,
    IconData? prefixIcon,
    String? descriptionText,
    bool enabled = true,
    bool hasBlankOption = false,
    FormFieldValidator<String>? validator,
    String? errorMessage,
  }) {
    return BlincInputDropdown(
      dropdownOptions: dropdownOptions,
      customOptionBuilder: customOptionBuilder,
      label: label,
      placeholder: placeholder,
      initialValue: initialValue,
      prefixIcon: prefixIcon,
      descriptionText: descriptionText,
      enabled: enabled,
      hasBlankOption: hasBlankOption,
      validator: validator,
      onChanged: onChanged,
      errorMessage: errorMessage,
    );
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
  bool obscureText;

  /// If true, inverts obscure text when click on suffix icon
  final bool changeableObscureText;

  /// Sets the icon on the left side
  final IconData? prefixIcon;

  /// Sets the icon on the right side
  IconData? suffixIcon;

  /// Sets the icon on the right side when obscure text is false
  IconData? secondSuffixIcon;

  /// Sets the error state icon
  IconData? errorIcon;

  /// Sets the description text
  final String? descriptionText;
  final bool enabled;
  final TextEditingController? textEditingController;

  /// The type of information of the text input control.
  final TextInputType? textInputType;

  /// Signature for validating a form field.
  ///Returns an error string to display if the input is invalid, or null otherwise.
  final FormFieldValidator<String>? validator;
  final String? errorMessage;

  /// Calls the function whenever the user edits the text
  final void Function(String? value)? onChanged;

  /// An object that can be used by a stateful widget to obtain the keyboard focus and to handle keyboard events.
  final FocusNode? focusNode;

  /// Sets the input formatters
  final List<TextInputFormatter>? inputFormatters;

  BlincInputTextField({
    Key? key,
    this.label,
    this.placeholder,
    this.obscureText = false,
    this.changeableObscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.secondSuffixIcon = Icons.new_releases_outlined,
    this.errorIcon = Icons.new_releases_outlined,
    this.descriptionText,
    this.enabled = true,
    this.textEditingController,
    this.textInputType,
    this.validator,
    this.errorMessage,
    this.onChanged,
    this.focusNode,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<BlincInputTextField> createState() => _BlincInputTextFieldState();
}

class _BlincInputTextFieldState extends State<BlincInputTextField> {
  late final FocusNode _focusNode;

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
    _focusNode = widget.focusNode ?? FocusNode();
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
    if (_errorMessage != null || widget.errorMessage != null) {
      return AppColors.colorRedError_300;
    }

    return _borderColor;
  }

  Widget _iconStyleRule(
    IconData? icon, {
    bool hasSuffixIcon = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.wsp,
        right: 10.wsp,
      ),
      child: icon != null
          ? GestureDetector(
              onTap: () {
                if (widget.changeableObscureText) {
                  final tempIcon = widget.suffixIcon;
                  widget.suffixIcon = widget.secondSuffixIcon;
                  widget.errorIcon = widget.secondSuffixIcon;
                  widget.secondSuffixIcon = tempIcon;
                  widget.obscureText = !widget.obscureText;
                  setState(() {});
                }
              },
              child: Icon(
                (hasSuffixIcon && _errorMessage != null) ||
                        (hasSuffixIcon && widget.errorMessage != null)
                    ? widget.errorIcon
                    : icon,
                color: ((hasSuffixIcon && _errorMessage != null) ||
                        (hasSuffixIcon && widget.errorMessage != null)
                    ? AppColors.colorRedError_300
                    : AppColors.colorNeutral_800),
              ),
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
            color: !widget.enabled ? AppColors.colorNeutral_50 : null,
            border: Border.all(
              color: _borderStyleRule(),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            inputFormatters: widget.inputFormatters,
            obscureText: widget.obscureText,
            focusNode: _focusNode,
            keyboardType: widget.textInputType,
            enabled: widget.enabled,
            controller: widget.textEditingController,
            validator: (String? value) {
              if (widget.validator != null && widget.enabled) {
                setState(() {
                  _errorMessage = widget.validator!(value);
                });
                return _errorMessage;
              }
              if (widget.errorMessage != null) {
                return widget.errorMessage;
              }
              return null;
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
              prefixIcon: _iconStyleRule(widget.prefixIcon),
              suffixIcon: _iconStyleRule(
                widget.suffixIcon,
                hasSuffixIcon: true,
              ),
              labelStyle: TextStyle(
                color: _labelColor,
              ),
            ),
            style: TextStyle(
              color: !widget.enabled
                  ? AppColors.colorNeutral_400
                  : AppColors.colorNeutral_900,
            ),
            onChanged: widget.onChanged,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 10,
          ),
          child: Text(
            _errorMessage ??
                widget.errorMessage ??
                widget.descriptionText ??
                '',
            style: TextStyle(
              color: _errorMessage == null && widget.errorMessage == null
                  ? AppColors.colorNeutral_800
                  : AppColors.colorRedError_300,
            ),
          ),
        ),
      ],
    );
  }
}

class BlincInputDropdown extends StatefulWidget {
  List? dropdownOptions;
  final void Function(String? value, int? index) onChanged;
  final Widget Function(String currentInputValue, int index)?
      customOptionBuilder;
  final String? descriptionText;
  bool enabled;
  final String? errorMessage;
  final bool hasBlankOption;
  final String? initialValue;
  final String? label;
  final String? placeholder;
  final IconData? prefixIcon;
  final FormFieldValidator<String>? validator;

  BlincInputDropdown({
    Key? key,
    required this.dropdownOptions,
    required this.onChanged,
    this.customOptionBuilder,
    this.descriptionText,
    this.enabled = true,
    this.errorMessage,
    this.hasBlankOption = false,
    this.initialValue,
    this.label,
    this.placeholder,
    this.prefixIcon,
    this.validator,
  }) : super(key: key);

  @override
  State<BlincInputDropdown> createState() => _BlincInputDropdownState();
}

class _BlincInputDropdownState extends State<BlincInputDropdown> {
  Color _borderColor = Colors.grey;
  String _currentInputValue = '';
  String? _errorMessage;
  bool _hasSelected = false;
  Color _labelColor = AppColors.colorNeutral_800;
  bool _showOptionsList = false;

  Color _borderStyleRule() {
    if (_errorMessage != null || widget.errorMessage != null) {
      return AppColors.colorRedError_300;
    }
    setState(() {
      _borderColor = _showOptionsList
          ? AppColors.colorNeutral_800
          : AppColors.colorNeutral_400;

      _labelColor = _hasSelected
          ? AppColors.colorNeutral_800
          : AppColors.colorNeutral_900;
    });

    return _borderColor;
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      _currentInputValue = widget.initialValue!;
    }
    if (!widget.enabled) {
      widget.dropdownOptions = [];
    }
    if (widget.dropdownOptions!.isEmpty) {
      widget.enabled = false;
    }

    setState(() {
      _borderColor = _showOptionsList
          ? AppColors.colorNeutral_800
          : AppColors.colorNeutral_400;

      _labelColor = _hasSelected
          ? AppColors.colorNeutral_800
          : AppColors.colorNeutral_900;
    });
  }

  Color? _enabledWidgetColorRule() {
    return widget.enabled ? null : AppColors.colorNeutral_400;
  }

  Color _initialValueColorRule() {
    if (!widget.enabled) return AppColors.colorNeutral_400;
    return widget.initialValue == null
        ? AppColors.colorNeutral_600
        : AppColors.colorNeutral_900;
  }

  Widget _onlyLabelRule() {
    return _hasSelected
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label!,
                style: TextStyle(
                  color: _labelColor,
                  fontSize: 12,
                ),
              ),
              Text(
                _currentInputValue,
                style: TextStyle(
                  color: _enabledWidgetColorRule(),
                ),
              ),
            ],
          )
        : Text(
            widget.label!,
            style: TextStyle(
              fontSize: 16,
              color: _enabledWidgetColorRule(),
            ),
          );
  }

  List<Widget> _labelAndOtherTextRule() {
    return [
      Text(
        widget.label!,
        style: TextStyle(
          color: _labelColor,
          fontSize: _hasSelected ||
                  widget.placeholder != null ||
                  widget.initialValue != null
              ? 12
              : null,
        ),
      ),
      _hasSelected
          ? BlincText(_currentInputValue).sizeXS.heightSM
          : Text(
              widget.initialValue ?? widget.placeholder!,
              style: TextStyle(
                fontSize: 16,
                color: _initialValueColorRule(),
                height: 1.5,
              ),
            )
    ];
  }

  Widget _noLabelRule() {
    return _hasSelected
        ? Text(
            _currentInputValue,
            style: TextStyle(
              color: _enabledWidgetColorRule(),
            ),
          )
        : widget.placeholder != null || widget.initialValue != null
            ? Text(
                widget.initialValue ?? widget.placeholder!,
                style: TextStyle(
                  fontSize: 16,
                  color: _initialValueColorRule(),
                  height: 1.5,
                ),
              )
            : Container();
  }

  bool _hasLabelAndOtherText() {
    return widget.label != null &&
        (widget.placeholder != null || widget.initialValue != null);
  }

  bool _hasOnlyLabel() {
    return widget.label != null &&
        (widget.placeholder == null && widget.initialValue == null);
  }

  Widget _textColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _hasOnlyLabel()
          ? [
              _onlyLabelRule(),
            ]
          : _hasLabelAndOtherText()
              ? [
                  ..._labelAndOtherTextRule(),
                ]
              : [
                  _noLabelRule(),
                ],
    );
  }

  void _onDropDownTap() {
    setState(() {
      _showOptionsList = !_showOptionsList;
    });
  }

  void _selectOption(int index) {
    _hasSelected = true;
    _currentInputValue = '${widget.dropdownOptions![index]}';
    _onDropDownTap();
  }

  void _selectBlankOption() {
    _hasSelected = false;
    _currentInputValue = '';
    _onDropDownTap();
  }

  Widget _optionBuilder(int index) {
    return Row(
      children: [
        Text('${widget.dropdownOptions![index]}'),
      ],
    );
  }

  Widget _optionsList() {
    return ListView(
      shrinkWrap: true,
      children: [
        if (widget.hasBlankOption)
          InkWell(
            onTap: () {
              _selectBlankOption();

              widget.onChanged(null, null);
            },
            child: const SizedBox(
              width: 24,
              height: 53,
            ),
          ),
        ...widget.dropdownOptions!.asMap().entries.map((entry) {
          int index = entry.key;

          return Container(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                Container(
                  height: 0.25,
                  color: AppColors.colorNeutral_200,
                ),
                InkWell(
                  onTap: () {
                    _selectOption(index);

                    if (widget.dropdownOptions != null) {
                      widget.onChanged(widget.dropdownOptions![index], index);
                    }
                  },
                  child: SizedBox(
                    height: 53,
                    child: widget.customOptionBuilder == null
                        ? _optionBuilder(index)
                        : widget.customOptionBuilder!(
                            _currentInputValue, index),
                  ),
                ),
              ],
            ),
          );
        }).toList()
      ],
    );
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
              if (widget.validator != null && widget.enabled) {
                setState(() {
                  _errorMessage = widget.validator!(value);
                });
                return _errorMessage;
              }
              if (widget.errorMessage != null) {
                return widget.errorMessage;
              }
              return null;
            },
            builder: (FormFieldState state) {
              return Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 82,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 7.5,
                                ),
                                child: widget.prefixIcon != null
                                    ? Icon(widget.prefixIcon)
                                    : Container(),
                              ),
                              _textColumn(),
                            ],
                          ),
                        ),
                        widget.enabled
                            ? IconButton(
                                disabledColor: AppColors.colorNeutral_400,
                                onPressed: _onDropDownTap,
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.colorNeutral_800,
                                ),
                              )
                            : const Padding(
                                padding: EdgeInsets.only(right: 12.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.colorNeutral_400,
                                ),
                              ),
                      ],
                    ),
                  ),
                  if (_showOptionsList) _optionsList(),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.hsp,
            left: 10.wsp,
          ),
          child: Text(
            _errorMessage ??
                widget.errorMessage ??
                widget.descriptionText ??
                '',
            style: TextStyle(
              color: _errorMessage == null && widget.errorMessage == null
                  ? AppColors.colorNeutral_800
                  : AppColors.colorRedError_300,
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
