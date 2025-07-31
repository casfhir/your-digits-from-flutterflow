// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> updateTransfer(
  String groupId,
  String fromId,
  String toId,
  double amount,
  DateTime datePicked,
  DateTime timePicked,
  String payee,
  String? categoryId,
  String? note,
  String commitment,
) async {
  final s = SupaFlow.client;
  await s.rpc('update_transfer', params: {
    'p_group': groupId,
    'p_from': fromId,
    'p_to': toId,
    'p_amt': amount,
    'p_date': DateFormat('yyyy-MM-dd').format(datePicked),
    'p_time': DateFormat('HH:mm:ss').format(timePicked),
    'p_payee': payee,
    'p_category_id': categoryId,
    'p_note': note,
    'p_commitment': commitment,
  });
}
