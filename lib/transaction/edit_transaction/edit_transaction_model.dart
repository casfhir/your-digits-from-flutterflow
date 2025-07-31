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
import 'edit_transaction_widget.dart' show EditTransactionWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditTransactionModel extends FlutterFlowModel<EditTransactionWidget> {
  ///  Local state fields for this page.
  /// To store the positive value entered in the amount field.
  double inputAmountMagnitude = 0.0;

  /// To store 'expense', 'income', or 'transfer' based on which button is
  /// selected
  String selectedBaseType = 'EXP';

  DateTime? dbDate;

  /// To store the text from the Payee/Description input.
  String dbPayeeDesc = ' ';

  /// To store the text from the Notes input.
  String dbNotes = ' ';

  /// To store the sign from signButton
  bool uiSignIsNegative = true;

  DateTime? dbTime;

  List<String> emptyStringList = [];
  void addToEmptyStringList(String item) => emptyStringList.add(item);
  void removeFromEmptyStringList(String item) => emptyStringList.remove(item);
  void removeAtIndexFromEmptyStringList(int index) =>
      emptyStringList.removeAt(index);
  void insertAtIndexInEmptyStringList(int index, String item) =>
      emptyStringList.insert(index, item);
  void updateEmptyStringListAtIndex(int index, Function(String) updateFn) =>
      emptyStringList[index] = updateFn(emptyStringList[index]);

  /// only for page loads
  String dbBaseType = ' ';

  /// only for page loads
  String dbAmount = ' ';

  String? fromAccountId = '';

  String? toAccountId;

  String origCategoryId = ' ';

  String? fromAccountName;

  String? toAccountName;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in EditTransaction widget.
  List<TransactionsWithCategoryRow>? queriedTransOnPageLoad;
  // Stores action output result for [Backend Call - Query Rows] action in EditTransaction widget.
  List<TransactionsWithCategoryRow>? rowsPair;
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
