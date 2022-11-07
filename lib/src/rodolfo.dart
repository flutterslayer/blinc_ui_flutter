import 'package:blinc_ui_flutter/blinc_ui_flutter.dart';
import 'package:flutter/material.dart';

class BlincInputDropdown<T> extends StatefulWidget {
  List? dropdownOptions;
  Widget Function(int index) optionBuilder;
  final String? label;
  final String? placeholder;
  final String? initialValue;
  final IconData? prefixIcon;
  final String? descriptionText;
  bool enabled;
  FormFieldValidator<String>? validator;
  void Function(T) onChanged;

  BlincInputDropdown({
    Key? key,
    required this.dropdownOptions,
    required this.optionBuilder,
    required this.onChanged,
    this.label,
    this.placeholder,
    this.initialValue,
    this.prefixIcon,
    this.descriptionText,
    this.enabled = true,
    this.validator,
  }) : super(key: key);

  @override
  State<BlincInputDropdown> createState() => _BlincInputDropdownState();
}

class _BlincInputDropdownState extends State<BlincInputDropdown> {
  String? _errorMessage;
  Color _borderColor = Colors.grey;
  bool _showOptionsList = false;
  bool _hasSelected = false;
  String _currentInputValue = '';
  Color _labelColor = AppColors.colorNeutral_800;

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

  Widget _textColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.label != null &&
              (widget.placeholder == null && widget.initialValue == null)
          ? [
              !_hasSelected
                  ? Text(
                      widget.label!,
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            widget.enabled ? null : AppColors.colorNeutral_400,
                      ),
                    )
                  : Column(
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
                            color: widget.enabled
                                ? null
                                : AppColors.colorNeutral_400,
                          ),
                        ),
                      ],
                    ),
            ]
          : widget.label != null &&
                  (widget.placeholder != null || widget.initialValue != null)
              ? [
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
                            color: widget.initialValue == null
                                ? AppColors.colorNeutral_600
                                : AppColors.colorNeutral_900,
                            height: 1.5,
                          ),
                        ),
                ]
              : [
                  _hasSelected
                      ? Text(
                          _currentInputValue,
                          style: TextStyle(
                            color: widget.enabled
                                ? null
                                : AppColors.colorNeutral_400,
                          ),
                        )
                      : widget.placeholder != null ||
                              widget.initialValue != null
                          ? Text(
                              widget.initialValue ?? widget.placeholder!,
                              style: TextStyle(
                                fontSize: 16,
                                color: widget.initialValue == null
                                    ? AppColors.colorNeutral_600
                                    : AppColors.colorNeutral_900,
                                height: 1.5,
                              ),
                            )
                          : Container()
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

  Widget optionBuilder(int index) {
    if (widget.dropdownOptions == null) throw Error();
    return Text('${widget.dropdownOptions![index]}');
  }

  Widget _optionsList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.dropdownOptions!.length,
      itemBuilder: (context, index) {
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

                  print(widget.onChanged);

                  /*if (widget.onChanged != null &&
                      widget.dropdownOptions != null) {
                    */ /*widget.onChanged!(widget.dropdownOptions![index] as T);*/ /*
                  }*/
                },
                child: SizedBox(
                  height: 53,
                  child: widget.optionBuilder(index),
                ),
              ),
            ],
          ),
        );
      },
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
