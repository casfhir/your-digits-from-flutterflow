import '../database.dart';

class ViewLeftSummaryMonthTable extends SupabaseTable<ViewLeftSummaryMonthRow> {
  @override
  String get tableName => 'view_left_summary_month';

  @override
  ViewLeftSummaryMonthRow createRow(Map<String, dynamic> data) =>
      ViewLeftSummaryMonthRow(data);
}

class ViewLeftSummaryMonthRow extends SupabaseDataRow {
  ViewLeftSummaryMonthRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewLeftSummaryMonthTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get monthStart => getField<DateTime>('month_start');
  set monthStart(DateTime? value) => setField<DateTime>('month_start', value);

  double? get totalLeft => getField<double>('total_left');
  set totalLeft(double? value) => setField<double>('total_left', value);
}
