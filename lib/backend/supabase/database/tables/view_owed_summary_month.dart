import '../database.dart';

class ViewOwedSummaryMonthTable extends SupabaseTable<ViewOwedSummaryMonthRow> {
  @override
  String get tableName => 'view_owed_summary_month';

  @override
  ViewOwedSummaryMonthRow createRow(Map<String, dynamic> data) =>
      ViewOwedSummaryMonthRow(data);
}

class ViewOwedSummaryMonthRow extends SupabaseDataRow {
  ViewOwedSummaryMonthRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewOwedSummaryMonthTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get monthStart => getField<DateTime>('month_start');
  set monthStart(DateTime? value) => setField<DateTime>('month_start', value);

  double? get totalOwed => getField<double>('total_owed');
  set totalOwed(double? value) => setField<double>('total_owed', value);
}
