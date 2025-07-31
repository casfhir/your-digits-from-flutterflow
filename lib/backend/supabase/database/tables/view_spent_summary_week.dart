import '../database.dart';

class ViewSpentSummaryWeekTable extends SupabaseTable<ViewSpentSummaryWeekRow> {
  @override
  String get tableName => 'view_spent_summary_week';

  @override
  ViewSpentSummaryWeekRow createRow(Map<String, dynamic> data) =>
      ViewSpentSummaryWeekRow(data);
}

class ViewSpentSummaryWeekRow extends SupabaseDataRow {
  ViewSpentSummaryWeekRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSpentSummaryWeekTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get weekStart => getField<DateTime>('week_start');
  set weekStart(DateTime? value) => setField<DateTime>('week_start', value);

  double? get totalSpent => getField<double>('total_spent');
  set totalSpent(double? value) => setField<double>('total_spent', value);
}
