import '../database.dart';

class ViewSpentSummaryTable extends SupabaseTable<ViewSpentSummaryRow> {
  @override
  String get tableName => 'view_spent_summary';

  @override
  ViewSpentSummaryRow createRow(Map<String, dynamic> data) =>
      ViewSpentSummaryRow(data);
}

class ViewSpentSummaryRow extends SupabaseDataRow {
  ViewSpentSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSpentSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get totalSpent => getField<double>('total_spent');
  set totalSpent(double? value) => setField<double>('total_spent', value);
}
