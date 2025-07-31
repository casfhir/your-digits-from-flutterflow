import '../database.dart';

class ViewOwedSummaryTable extends SupabaseTable<ViewOwedSummaryRow> {
  @override
  String get tableName => 'view_owed_summary';

  @override
  ViewOwedSummaryRow createRow(Map<String, dynamic> data) =>
      ViewOwedSummaryRow(data);
}

class ViewOwedSummaryRow extends SupabaseDataRow {
  ViewOwedSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewOwedSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get totalOwed => getField<double>('total_owed');
  set totalOwed(double? value) => setField<double>('total_owed', value);
}
