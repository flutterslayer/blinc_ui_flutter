import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class BlincInputDropdown extends StatefulWidget {
  ///tesst
  List? dropdownOptions;
  void Function(String? value, int? index) onChanged;
  Widget Function(int index)? customOptionBuilder;
  final String? descriptionText;
  bool enabled;
  bool hasBlankOption;
  final String? initialValue;
  final String? label;
  final String? placeholder;
  final IconData? prefixIcon;
  FormFieldValidator<String>? validator;

  BlincInputDropdown({
    Key? key,
    required this.dropdownOptions,
    required this.onChanged,
    this.customOptionBuilder,
    this.descriptionText,
    this.enabled = true,
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
    if (_errorMessage != null) {
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
                        : widget.customOptionBuilder!(index),
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
              if (widget.validator == null || !widget.enabled) {
                return null;
              }
              setState(() {
                _errorMessage = widget.validator!(value);
              });
              return _errorMessage;
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
