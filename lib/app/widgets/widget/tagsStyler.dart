//Models
import 'package:flutter/material.dart';

///[TagsStyler] allows you to design the exact style you want for your tag by using its properties. It must not be [null]

class TagsStyler {
  ///[tagPadding] allows you to apply padding inside tag
  final EdgeInsets tagPadding;

  ///[tagMargin] allows you to apply margin inside tag
  final EdgeInsets tagMargin;

  ///[tagMargin] apply decoration to the container containing the tag. Should specify the color to set tag color, otherwise its white by default
  final BoxDecoration tagDecoration;

  ///[tagTextStyle] style the text inside tag
  final TextStyle? tagTextStyle;

  /// Styles the padding of the tag text
  final EdgeInsets tagTextPadding;

  /// Styles the padding of the tag cancel icon
  final EdgeInsets tagCancelIconPadding;

  ///[tagCancelIcon] apply your own icon, if you want, to delete the icon
  final Widget tagCancelIcon;

  ///Enable or disable the # prefix icon
  final bool showHashtag;

  TagsStyler({
    this.tagTextPadding = const EdgeInsets.all(0.0),
    this.tagCancelIconPadding = const EdgeInsets.only(left: 1.0),
    this.tagPadding = const EdgeInsets.all(4.0),
    this.tagMargin = const EdgeInsets.symmetric(horizontal: 4.0),
    this.tagDecoration =
        const BoxDecoration(color: Color.fromARGB(255, 74, 137, 92)),
    this.tagTextStyle,
    this.showHashtag = false,
    this.tagCancelIcon = const Icon(
      Icons.cancel,
      size: 18.0,
      color: Colors.green,
    ),
  });
}

///////////////////////////////////TextFieldStyler Model///////////////////////////////

///[TextFieldStyler] allows you to design the exact style you want for your textfield by using its properties. It must not be [null]
class TextFieldStyler {
  /// The color of the decoration inside the textfield
  final Color? textFieldFilledColor;

  ///[textFieldFilled] If true the decoration's container is filled with [textFieldFilledColor].
  final bool textFieldFilled;

  ///The padding for the input decoration's container. Adjust this to using EdgeInsets if you make textFieldBorder [null] or borderless to have the right customized style
  final EdgeInsets? contentPadding;

  /// The text style of the text input
  final TextStyle? textStyle;

  ///The color of the cursor blinking
  final Color? cursorColor;

  ///Whether the input [child] is part of a dense form (i.e., uses less vertical space).
  final bool isDense;

  ///Text that provides context about the input [child]'s value, such as how the value will be used.

  ///Style helperText

  ///Text that suggests what sort of input the field accepts.
  final String hintText;

  ///Styles hint text
  final TextStyle? hintStyle;

  ///Enable or disable the textfield
  final bool textFieldEnabled;

  /// The icon that displays side of the text field
  final Icon? icon;

  ///Add read only to the text field
  final bool readOnly;

  ///Add keyboard type
  final TextInputType? textInputType;

  ///Add max length for the tags
  final int? maxLength;

  final InputBorder? textFieldBorder;
  final InputBorder? textFieldFocusedBorder;
  final InputBorder? textFieldDisabledBorder;
  final InputBorder? textFieldEnabledBorder;

  TextFieldStyler({
    this.textFieldFilled = false,
    this.maxLength,
    this.textStyle,
    this.textInputType,
    this.cursorColor,
    this.hintText = 'Got tags?',
    this.hintStyle,
    this.contentPadding,
    this.textFieldFilledColor,
    this.isDense = true,
    this.readOnly = false,
    this.textFieldEnabled = true,
    this.icon,
    this.textFieldBorder = const OutlineInputBorder(),
    this.textFieldFocusedBorder,
    this.textFieldDisabledBorder,
    this.textFieldEnabledBorder,
  });
}

///////////////////////////////////Controller Model///////////////////////////////

///Textfield tags controller
class TextFieldTagsController extends ChangeNotifier {
  static final textEditingController = TextEditingController();
  static final focusNode = FocusNode();
  late Set<String> tags;
  late Map<String, dynamic> tagStates;

  TextFieldTagsController()
      : tags = {},
        tagStates = {
          'show_prefix_icon': false,
          'show_validator': false,
          'error': {
            'error_text': '',
            'error_style': const TextStyle(color: Colors.red),
          },
        };

  ///Get the map object of all tag states
  Map<String, dynamic> get getTagStates {
    return {
      'show_validator': tagStates['show_validator'],
      'show_prefix_icon': tagStates['show_prefix_icon'],
      'validator_message': tagStates['error']['error_text'],
      'validator_style': tagStates['error']['error_style'],
    };
  }

  ///Get a list of all tags
  List<String> get getAllTags {
    return tags.toList();
  }

  ///Get a set of all tags
  Set<String> get getSetTags {
    return tags;
  }

  ///Get the text controller
  static TextEditingController get getTextEditingController {
    return textEditingController;
  }

  ///Get the text controller focus node
  static FocusNode get getFocusNode {
    return focusNode;
  }

  ///Show prefix icon?
  bool get showPrefixIcon {
    return tagStates['show_prefix_icon'];
  }

  ///Show validator?
  bool get showValidator {
    return tagStates['show_validator'];
  }

  ///Get the error
  Map<String, dynamic> get getError {
    return tagStates['error'];
  }

  //------------------------------SETS-----------------------

  ///Set tags
  void init(List tags, bool showPrefix) {
    this.tags = Set.from(tags);
    tagStates['show_prefix_icon'] = showPrefix;
    super.notifyListeners();
  }

  ///Add a tag
  set addTag(String tag) {
    tags.add(tag);
    super.notifyListeners();
  }

  ///Remove a tag
  set removeTag(String tag) {
    tags.remove(tag);
    super.notifyListeners();
  }

  ///Set prefix icon
  set setPrefixIcon(bool showPrefixIcon) {
    tagStates['show_prefix_icon'] = showPrefixIcon;
    super.notifyListeners();
  }

  ///Set show validator
  set setShowValidator(bool showValidator) {
    tagStates['show_validator'] = showValidator;
    super.notifyListeners();
  }

  ///Set your error message and its style
  void showError(String errorMessage, {TextStyle? errorStyle}) {
    tagStates['error']['error_text'] = errorMessage;
    tagStates['show_validator'] = true;
    if (errorStyle != null) {
      tagStates['error']['error_style'] = errorStyle;
    }
    super.notifyListeners();
  }

  ///Clear the tags
  void clearTextFieldTags() {
    tags.clear();
    tagStates['show_prefix_icon'] = tags.isNotEmpty;
    tagStates['show_validator'] = false;
    textEditingController.clear();
    super.notifyListeners();
  }

  ///Dispose resouses
  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
    focusNode.dispose();
  }
}
