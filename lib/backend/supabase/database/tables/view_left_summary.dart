import '../database.dart';

class ViewLeftSummaryTable extends SupabaseTable<ViewLeftSummaryRow> {
  @override
  String get tableName => 'view_left_summary';

  @override
  ViewLeftSummaryRow createRow(Map<String, dynamic> data) =>
      ViewLeftSummaryRow(data);
}

class ViewLeftSummaryRow extends SupabaseDataRow {
  ViewLeftSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewLeftSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get totalLeft => getField<double>('total_left');
  set totalLeft(double? value) => setField<double>('total_left', value);
}
