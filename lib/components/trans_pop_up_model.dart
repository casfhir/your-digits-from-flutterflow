import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'trans_pop_up_widget.dart' show TransPopUpWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransPopUpModel extends FlutterFlowModel<TransPopUpWidget> {
  ///  Local state fields for this component.

  double amount = 0.0;

  DateTime? selectedDate;

  DateTime? selectedTime;

  String selectedAccountFromId = ' ';

  String? selectedAccountToId;

  String payee = ' ';

  String? notes;

  ///  State fields for stateful widgets in this component.

  // State field(s) for amountInput widget.
  FocusNode? amountInputFocusNode;
  TextEditingController? amountInputTextController;
  String? Function(BuildContext, String?)? amountInputTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for accountDropdownTo widget.
  String? accountDropdownToValue;
  FormFieldController<String>? accountDropdownToValueController;
  // State field(s) for accountDropdownFrom widget.
  String? accountDropdownFromValue;
  FormFieldController<String>? accountDropdownFromValueController;
  // State field(s) for payeeInput widget.
  FocusNode? payeeInputFocusNode;
  TextEditingController? payeeInputTextController;
  String? Function(BuildContext, String?)? payeeInputTextControllerValidator;
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
