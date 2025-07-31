import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/gold_coin_draggable_widget.dart';
import '/components/jar_drag_target_widget.dart';
import '/components/trans_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'add_tran_jar_mode_widget.dart' show AddTranJarModeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTranJarModeModel extends FlutterFlowModel<AddTranJarModeWidget> {
  ///  Local state fields for this page.

  TransactionDataStruct? draggedData;
  void updateDraggedDataStruct(Function(TransactionDataStruct) updateFn) {
    updateFn(draggedData ??= TransactionDataStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for GoldCoinDraggable component.
  late GoldCoinDraggableModel goldCoinDraggableModel;

  @override
  void initState(BuildContext context) {
    goldCoinDraggableModel =
        createModel(context, () => GoldCoinDraggableModel());
  }

  @override
  void dispose() {
    goldCoinDraggableModel.dispose();
  }
}
