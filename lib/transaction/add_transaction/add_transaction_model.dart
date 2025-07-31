import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'add_transaction_widget.dart' show AddTransactionWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTransactionModel extends FlutterFlowModel<AddTransactionWidget> {
  ///  Local state fields for this page.
  /// To store the positive value entered in the amount field.
  double inputAmountMagnitude = 0.0;

  /// To store 'expense', 'income', or 'transfer' based on which button is
  /// selected
  String selectedBaseType = 'EXP';

  DateTime? selectedDate;

  /// To store the sign from signButton
  bool uiSignIsNegative = true;

  DateTime? selectedTime;

  List<String> emptyStringList = [];
  void addToEmptyStringList(String item) => emptyStringList.add(item);
  void removeFromEmptyStringList(String item) => emptyStringList.remove(item);
  void removeAtIndexFromEmptyStringList(int index) =>
      emptyStringList.removeAt(index);
  void insertAtIndexInEmptyStringList(int index, String item) =>
      emptyStringList.insert(index, item);
  void updateEmptyStringListAtIndex(int index, Function(String) updateFn) =>
      emptyStringList[index] = updateFn(emptyStringList[index]);

  List<String> acctFromNameOnLoad = [];
  void addToAcctFromNameOnLoad(String item) => acctFromNameOnLoad.add(item);
  void removeFromAcctFromNameOnLoad(String item) =>
      acctFromNameOnLoad.remove(item);
  void removeAtIndexFromAcctFromNameOnLoad(int index) =>
      acctFromNameOnLoad.removeAt(index);
  void insertAtIndexInAcctFromNameOnLoad(int index, String item) =>
      acctFromNameOnLoad.insert(index, item);
  void updateAcctFromNameOnLoadAtIndex(int index, Function(String) updateFn) =>
      acctFromNameOnLoad[index] = updateFn(acctFromNameOnLoad[index]);

  List<String> acctFromIdOnLoad = [];
  void addToAcctFromIdOnLoad(String item) => acctFromIdOnLoad.add(item);
  void removeFromAcctFromIdOnLoad(String item) => acctFromIdOnLoad.remove(item);
  void removeAtIndexFromAcctFromIdOnLoad(int index) =>
      acctFromIdOnLoad.removeAt(index);
  void insertAtIndexInAcctFromIdOnLoad(int index, String item) =>
      acctFromIdOnLoad.insert(index, item);
  void updateAcctFromIdOnLoadAtIndex(int index, Function(String) updateFn) =>
      acctFromIdOnLoad[index] = updateFn(acctFromIdOnLoad[index]);

  List<String> acctToIdOnLoad = [];
  void addToAcctToIdOnLoad(String item) => acctToIdOnLoad.add(item);
  void removeFromAcctToIdOnLoad(String item) => acctToIdOnLoad.remove(item);
  void removeAtIndexFromAcctToIdOnLoad(int index) =>
      acctToIdOnLoad.removeAt(index);
  void insertAtIndexInAcctToIdOnLoad(int index, String item) =>
      acctToIdOnLoad.insert(index, item);
  void updateAcctToIdOnLoadAtIndex(int index, Function(String) updateFn) =>
      acctToIdOnLoad[index] = updateFn(acctToIdOnLoad[index]);

  List<String> acctToNameOnLoad = [];
  void addToAcctToNameOnLoad(String item) => acctToNameOnLoad.add(item);
  void removeFromAcctToNameOnLoad(String item) => acctToNameOnLoad.remove(item);
  void removeAtIndexFromAcctToNameOnLoad(int index) =>
      acctToNameOnLoad.removeAt(index);
  void insertAtIndexInAcctToNameOnLoad(int index, String item) =>
      acctToNameOnLoad.insert(index, item);
  void updateAcctToNameOnLoadAtIndex(int index, Function(String) updateFn) =>
      acctToNameOnLoad[index] = updateFn(acctToNameOnLoad[index]);

  String selectedAcctFrom = ' ';

  String selectedAcctTo = ' ';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in AddTransaction widget.
  List<AccountsRow>? queriedAccts;
  // State field(s) for baseTypeSelector widget.
  FormFieldController<List<String>>? baseTypeSelectorValueController;
  String? get baseTypeSelectorValue =>
      baseTypeSelectorValueController?.value?.firstOrNull;
  set baseTypeSelectorValue(String? val) =>
      baseTypeSelectorValueController?.value = val != null ? [val] : [];
  // State field(s) for amountInput widget.
  FocusNode? amountInputFocusNode;
  TextEditingController? amountInputTextController;
  String? Function(BuildContext, String?)? amountInputTextControllerValidator;
  // State field(s) for payeeInput widget.
  FocusNode? payeeInputFocusNode;
  TextEditingController? payeeInputTextController;
  String? Function(BuildContext, String?)? payeeInputTextControllerValidator;
  // State field(s) for categoryDropdown widget.
  String? categoryDropdownValue;
  FormFieldController<String>? categoryDropdownValueController;
  // State field(s) for accountDropdownTo widget.
  String? accountDropdownToValue;
  FormFieldController<String>? accountDropdownToValueController;
  // State field(s) for accountDropdownFrom widget.
  String? accountDropdownFromValue;
  FormFieldController<String>? accountDropdownFromValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for notesInput widget.
  FocusNode? notesInputFocusNode;
  TextEditingController? notesInputTextController;
  String? Function(BuildContext, String?)? notesInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountInputFocusNode?.dispose();
    amountInputTextController?.dispose();

    payeeInputFocusNode?.dispose();
    payeeInputTextController?.dispose();

    notesInputFocusNode?.dispose();
    notesInputTextController?.dispose();
  }
}
