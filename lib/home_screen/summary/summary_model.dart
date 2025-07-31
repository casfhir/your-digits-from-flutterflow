import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'summary_widget.dart' show SummaryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SummaryModel extends FlutterFlowModel<SummaryWidget> {
  ///  Local state fields for this page.
  /// a local state variable for which metric is active
  String selectedMetric = 'Spent';

  DateTime? weekStart;

  DateTime? monthStart;

  DateTime? tmpNow;

  ///  State fields for stateful widgets in this page.

  // State field(s) for summaryMetrics widget.
  FormFieldController<List<String>>? summaryMetricsValueController;
  String? get summaryMetricsValue =>
      summaryMetricsValueController?.value?.firstOrNull;
  set summaryMetricsValue(String? val) =>
      summaryMetricsValueController?.value = val != null ? [val] : [];
  // State field(s) for timeframeOptions widget.
  FormFieldController<List<String>>? timeframeOptionsValueController;
  List<String>? get timeframeOptionsValues =>
      timeframeOptionsValueController?.value;
  set timeframeOptionsValues(List<String>? v) =>
      timeframeOptionsValueController?.value = v;

  // State field(s) for scheduledItemToggle widget.
  bool? scheduledItemToggleValue;
  // State field(s) for lightDarkModeToggle widget.
  bool? lightDarkModeToggleValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
