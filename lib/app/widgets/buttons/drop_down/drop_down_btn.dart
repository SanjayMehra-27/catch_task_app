import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';

class DropDownItem {
  const DropDownItem({
    required this.name,
    required this.id,
    this.value = '',
  });
  final String name;
  final String id;
  final String value;
}

class DropDownBtn extends StatefulWidget {
  final List<DropDownItem> items;
  final double? width;
  final String? selectedItemId;
  final String hintText;
  final String? errorText;
  final bool isDisable;
  final String labelName;
  final FocusNode? focusNode;
  final Color? borderColor;
  final Function(DropDownItem) onChanged;
  final Function(DropDownItem)? validator;

  const DropDownBtn({
    Key? key,
    required this.items,
    this.selectedItemId,
    this.isDisable = false,
    this.labelName = "",
    this.borderColor,
    required this.hintText,
    required this.onChanged,
    this.width,
    this.validator,
    this.errorText,
    this.focusNode,
  }) : super(key: key);

  @override
  _DropDownBtnState createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  late DropDownItem selectedValue;
  @override
  void initState() {
    super.initState();
    print("selectedItemId: ${widget.selectedItemId}");
      selectedValue = widget.items.firstWhere(
        (element) => element.id == widget.selectedItemId,
        orElse: () => widget.items.first,
      );
  }

  @override
  Widget build(BuildContext context) {
     selectedValue = widget.items.firstWhere(
      (element) => element.id == widget.selectedItemId,
      orElse: () => widget.items.first,
    );
    return Container(
      width: widget.width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.labelName.length > 0
              ? Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.labelName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            width: widget.width ?? MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(
                color: widget.borderColor ?? Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField<DropDownItem>(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                focusNode: widget.focusNode,
                value: selectedValue,
                //elevation: 5,
                validator: widget.validator?.call(selectedValue),
                style: TextStyle(color: Colors.black),
                items: widget.items.map((DropDownItem dropDownItem) {
                  return new DropdownMenuItem<DropDownItem>(
                    value: dropDownItem,
                    child: new Text(
                      dropDownItem.name,
                      style: new TextStyle(color: Colors.black),
                    ),
                    enabled: !widget.isDisable,
                  );
                }).toList(),
                hint: Text(
                  widget.hintText,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.5,
                    letterSpacing: 1.3,
                  ),
                ),
                onChanged: (DropDownItem? value) {
                  setState(() {
                    selectedValue = value ?? widget.items.first;
                    widget.onChanged(value ?? widget.items.first) ;
                  });
                },
                isExpanded: widget.isDisable,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              widget.errorText ?? '',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.appPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
