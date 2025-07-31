import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'add_account_widget.dart' show AddAccountWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAccountModel extends FlutterFlowModel<AddAccountWidget> {
  ///  Local state fields for this page.

  double startingBalance = 0.0;

  String? selectedSubtype = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for accountName widget.
  FocusNode? accountNameFocusNode;
  TextEditingController? accountNameTextController;
  String? Function(BuildContext, String?)? accountNameTextControllerValidator;
  // State field(s) for accountType widget.
  String? accountTypeValue;
  FormFieldController<String>? accountTypeValueController;
  // State field(s) for subtype widget.
  String? subtypeValue;
  FormFieldController<String>? subtypeValueController;
  DateTime? datePicked;
  // State field(s) for startingBalance widget.
  FocusNode? startingBalanceFocusNode;
  TextEditingController? startingBalanceTextController;
  String? Function(BuildContext, String?)?
      startingBalanceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    accountNameFocusNode?.dispose();
    accountNameTextController?.dispose();

    startingBalanceFocusNode?.dispose();
    startingBalanceTextController?.dispose();
  }
}
