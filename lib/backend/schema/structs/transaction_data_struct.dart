// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionDataStruct extends BaseStruct {
  TransactionDataStruct({
    String? transactionId,
    String? baseTransactionType,
    String? isTransfer,
    String? categoryId,
    String? fromAccountId,
    String? toAccountId,
  })  : _transactionId = transactionId,
        _baseTransactionType = baseTransactionType,
        _isTransfer = isTransfer,
        _categoryId = categoryId,
        _fromAccountId = fromAccountId,
        _toAccountId = toAccountId;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  // "baseTransactionType" field.
  String? _baseTransactionType;
  String get baseTransactionType => _baseTransactionType ?? '';
  set baseTransactionType(String? val) => _baseTransactionType = val;

  bool hasBaseTransactionType() => _baseTransactionType != null;

  // "isTransfer" field.
  String? _isTransfer;
  String get isTransfer => _isTransfer ?? '';
  set isTransfer(String? val) => _isTransfer = val;

  bool hasIsTransfer() => _isTransfer != null;

  // "categoryId" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "fromAccountId" field.
  String? _fromAccountId;
  String get fromAccountId => _fromAccountId ?? '';
  set fromAccountId(String? val) => _fromAccountId = val;

  bool hasFromAccountId() => _fromAccountId != null;

  // "toAccountId" field.
  String? _toAccountId;
  String get toAccountId => _toAccountId ?? '';
  set toAccountId(String? val) => _toAccountId = val;

  bool hasToAccountId() => _toAccountId != null;

  static TransactionDataStruct fromMap(Map<String, dynamic> data) =>
      TransactionDataStruct(
        transactionId: data['transactionId'] as String?,
        baseTransactionType: data['baseTransactionType'] as String?,
        isTransfer: data['isTransfer'] as String?,
        categoryId: data['categoryId'] as String?,
        fromAccountId: data['fromAccountId'] as String?,
        toAccountId: data['toAccountId'] as String?,
      );

  static TransactionDataStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'transactionId': _transactionId,
        'baseTransactionType': _baseTransactionType,
        'isTransfer': _isTransfer,
        'categoryId': _categoryId,
        'fromAccountId': _fromAccountId,
        'toAccountId': _toAccountId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactionId': serializeParam(
          _transactionId,
          ParamType.String,
        ),
        'baseTransactionType': serializeParam(
          _baseTransactionType,
          ParamType.String,
        ),
        'isTransfer': serializeParam(
          _isTransfer,
          ParamType.String,
        ),
        'categoryId': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'fromAccountId': serializeParam(
          _fromAccountId,
          ParamType.String,
        ),
        'toAccountId': serializeParam(
          _toAccountId,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionDataStruct(
        transactionId: deserializeParam(
          data['transactionId'],
          ParamType.String,
          false,
        ),
        baseTransactionType: deserializeParam(
          data['baseTransactionType'],
          ParamType.String,
          false,
        ),
        isTransfer: deserializeParam(
          data['isTransfer'],
          ParamType.String,
          false,
        ),
        categoryId: deserializeParam(
          data['categoryId'],
          ParamType.String,
          false,
        ),
        fromAccountId: deserializeParam(
          data['fromAccountId'],
          ParamType.String,
          false,
        ),
        toAccountId: deserializeParam(
          data['toAccountId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionDataStruct &&
        transactionId == other.transactionId &&
        baseTransactionType == other.baseTransactionType &&
        isTransfer == other.isTransfer &&
        categoryId == other.categoryId &&
        fromAccountId == other.fromAccountId &&
        toAccountId == other.toAccountId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactionId,
        baseTransactionType,
        isTransfer,
        categoryId,
        fromAccountId,
        toAccountId
      ]);
}

TransactionDataStruct createTransactionDataStruct({
  String? transactionId,
  String? baseTransactionType,
  String? isTransfer,
  String? categoryId,
  String? fromAccountId,
  String? toAccountId,
}) =>
    TransactionDataStruct(
      transactionId: transactionId,
      baseTransactionType: baseTransactionType,
      isTransfer: isTransfer,
      categoryId: categoryId,
      fromAccountId: fromAccountId,
      toAccountId: toAccountId,
    );
