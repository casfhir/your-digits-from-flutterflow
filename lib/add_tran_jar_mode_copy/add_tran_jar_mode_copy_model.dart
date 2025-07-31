import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/gold_coin_draggable_widget.dart';
import '/components/jar_drag_target_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'add_tran_jar_mode_copy_widget.dart' show AddTranJarModeCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTranJarModeCopyModel
    extends FlutterFlowModel<AddTranJarModeCopyWidget> {
  ///  Local state fields for this page.

  TransactionDataStruct? draggedData;
  void updateDraggedDataStruct(Function(TransactionDataStruct) updateFn) {
    updateFn(draggedData ??= TransactionDataStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for JarDragTarget component.
  late JarDragTargetModel jarDragTargetModel1;
  // Model for JarDragTarget component.
  late JarDragTargetModel jarDragTargetModel2;
  // Model for JarDragTarget component.
  late JarDragTargetModel jarDragTargetModel3;
  // Model for JarDragTarget component.
  late JarDragTargetModel jarDragTargetModel4;
  // Model for GoldCoinDraggable component.
  late GoldCoinDraggableModel goldCoinDraggableModel;

  @override
  void initState(BuildContext context) {
    jarDragTargetModel1 = createModel(context, () => JarDragTargetModel());
    jarDragTargetModel2 = createModel(context, () => JarDragTargetModel());
    jarDragTargetModel3 = createModel(context, () => JarDragTargetModel());
    jarDragTargetModel4 = createModel(context, () => JarDragTargetModel());
    goldCoinDraggableModel =
        createModel(context, () => GoldCoinDraggableModel());
  }

  @override
  void dispose() {
    jarDragTargetModel1.dispose();
    jarDragTargetModel2.dispose();
    jarDragTargetModel3.dispose();
    jarDragTargetModel4.dispose();
    goldCoinDraggableModel.dispose();
  }
}
