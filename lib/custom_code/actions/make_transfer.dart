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

Future<void> makeTransfer(
  String fromId, // 1
  String toId, // 2
  double amount, // 3
  DateTime datePicked, // 4  (DATE picker)
  DateTime timePicked, // 5  (TIME picker)
  String payee, // 6
  String? categoryId, // 7
  String? note, // 8
  String commitment, // 9
) async {
  final supabase = SupaFlow.client;
  final uid = supabase.auth.currentUser!.id;

  await supabase.rpc('make_transfer', params: {
    'p_user': uid,
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
