import '../database.dart';

class TransactionsWithCategoryTable
    extends SupabaseTable<TransactionsWithCategoryRow> {
  @override
  String get tableName => 'transactions_with_category';

  @override
  TransactionsWithCategoryRow createRow(Map<String, dynamic> data) =>
      TransactionsWithCategoryRow(data);
}

class TransactionsWithCategoryRow extends SupabaseDataRow {
  TransactionsWithCategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsWithCategoryTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get payee => getField<String>('payee');
  set payee(String? value) => setField<String>('payee', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get baseTransactionType => getField<String>('base_transaction_type');
  set baseTransactionType(String? value) =>
      setField<String>('base_transaction_type', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  PostgresTime? get time => getField<PostgresTime>('time');
  set time(PostgresTime? value) => setField<PostgresTime>('time', value);

  String? get commitment => getField<String>('commitment');
  set commitment(String? value) => setField<String>('commitment', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  String? get accountId => getField<String>('account_id');
  set accountId(String? value) => setField<String>('account_id', value);

  String? get transferGroup => getField<String>('transfer_group');
  set transferGroup(String? value) => setField<String>('transfer_group', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  String? get iconId => getField<String>('icon_id');
  set iconId(String? value) => setField<String>('icon_id', value);

  String? get iconName => getField<String>('icon_name');
  set iconName(String? value) => setField<String>('icon_name', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);
}
