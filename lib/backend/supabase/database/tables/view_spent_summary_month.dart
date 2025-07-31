import '../database.dart';

class ViewSpentSummaryMonthTable
    extends SupabaseTable<ViewSpentSummaryMonthRow> {
  @override
  String get tableName => 'view_spent_summary_month';

  @override
  ViewSpentSummaryMonthRow createRow(Map<String, dynamic> data) =>
      ViewSpentSummaryMonthRow(data);
}

class ViewSpentSummaryMonthRow extends SupabaseDataRow {
  ViewSpentSummaryMonthRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSpentSummaryMonthTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get monthStart => getField<DateTime>('month_start');
  set monthStart(DateTime? value) => setField<DateTime>('month_start', value);

  double? get totalSpent => getField<double>('total_spent');
  set totalSpent(double? value) => setField<double>('total_spent', value);
}
