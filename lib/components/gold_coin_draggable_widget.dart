import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gold_coin_draggable_model.dart';
export 'gold_coin_draggable_model.dart';

class GoldCoinDraggableWidget extends StatefulWidget {
  const GoldCoinDraggableWidget({super.key});

  @override
  State<GoldCoinDraggableWidget> createState() =>
      _GoldCoinDraggableWidgetState();
}

class _GoldCoinDraggableWidgetState extends State<GoldCoinDraggableWidget> {
  late GoldCoinDraggableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoldCoinDraggableModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Draggable<TransactionDataStruct>(
          data: TransactionDataStruct(
            transactionId: null,
          ),
          feedback: Material(
            type: MaterialType.transparency,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://nmqhhmjjroqdnafbfygd.supabase.co/storage/v1/object/public/jar-icons//gold_coin.PNG',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ),
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://nmqhhmjjroqdnafbfygd.supabase.co/storage/v1/object/public/jar-icons//gold_coin.PNG',
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
