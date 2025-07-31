import '../database.dart';

class ViewNetworthSummaryTable extends SupabaseTable<ViewNetworthSummaryRow> {
  @override
  String get tableName => 'view_networth_summary';

  @override
  ViewNetworthSummaryRow createRow(Map<String, dynamic> data) =>
      ViewNetworthSummaryRow(data);
}

class ViewNetworthSummaryRow extends SupabaseDataRow {
  ViewNetworthSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewNetworthSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get totalAssets => getField<double>('total_assets');
  set totalAssets(double? value) => setField<double>('total_assets', value);

  double? get totalLiabilities => getField<double>('total_liabilities');
  set totalLiabilities(double? value) =>
      setField<double>('total_liabilities', value);

  double? get equity => getField<double>('equity');
  set equity(double? value) => setField<double>('equity', value);
}
