// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num).toInt(),
      completed: json['completed'] as bool,
      userId: (json['user_id'] as num).toInt(),
      paymentId: (json['payment_id'] as num?)?.toInt(),
      fee: (json['fee'] as num).toDouble(),
      shipmentFee: (json['shipment_fee'] as num).toDouble(),
      referenceNumber: json['reference_number'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      note: json['note'] as String?,
      rentalItems: (json['rental_items'] as List<dynamic>)
          .map((e) => RentalItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'completed': instance.completed,
      'user_id': instance.userId,
      'payment_id': instance.paymentId,
      'fee': instance.fee,
      'shipment_fee': instance.shipmentFee,
      'reference_number': instance.referenceNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'note': instance.note,
      'rental_items': instance.rentalItems,
      'payment': instance.payment,
    };

_$RentalItemDataImpl _$$RentalItemDataImplFromJson(Map<String, dynamic> json) =>
    _$RentalItemDataImpl(
      id: (json['id'] as num).toInt(),
      hasReviewed: json['has_reviewed'] as bool,
      returnDate: json['return_date'] == null
          ? null
          : DateTime.parse(json['return_date'] as String),
      productId: (json['product_id'] as num).toInt(),
      rentalId: (json['rental_id'] as num).toInt(),
      note: json['note'] as String?,
      units: (json['units'] as num).toInt(),
      fee: (json['fee'] as num).toDouble(),
      variant: json['product_variant'] == null
          ? null
          : Variant.fromJson(json['product_variant'] as Map<String, dynamic>),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      merchantReturnConfirmed: json['merchant_return_confirmed'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      customerReturnConfirmed: json['customer_return_confirmed'] as bool,
    );

Map<String, dynamic> _$$RentalItemDataImplToJson(
        _$RentalItemDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'has_reviewed': instance.hasReviewed,
      'return_date': instance.returnDate?.toIso8601String(),
      'product_id': instance.productId,
      'rental_id': instance.rentalId,
      'note': instance.note,
      'units': instance.units,
      'fee': instance.fee,
      'product_variant': instance.variant,
      'product': instance.product,
      'merchant_return_confirmed': instance.merchantReturnConfirmed,
      'created_at': instance.createdAt.toIso8601String(),
      'customer_return_confirmed': instance.customerReturnConfirmed,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      details: json['details'] as String?,
      transactionReference: json['transaction_reference'] as String?,
      accountDebited: json['account_debited'] as String?,
      transactionReceipt: json['transaction_receipt'] as String?,
      paymentMethod:
          $enumDecode(_$PaymentMethodsEnumMap, json['payment_method']),
      createdAt: DateTime.parse(json['created_at'] as String),
      amount: (json['amount'] as num).toDouble(),
      userId: (json['user_id'] as num).toInt(),
      status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      earningOverview: (json['earning_overview'] as List<dynamic>)
          .map((e) => EarningItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      approvalStatus:
          $enumDecode(_$ApprovalStatusEnumMap, json['approval_status']),
      transactionType: $enumDecodeNullable(
          _$TransactionTypeEnumMap, json['transaction_type']),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'details': instance.details,
      'transaction_reference': instance.transactionReference,
      'account_debited': instance.accountDebited,
      'transaction_receipt': instance.transactionReceipt,
      'payment_method': _$PaymentMethodsEnumMap[instance.paymentMethod]!,
      'created_at': instance.createdAt.toIso8601String(),
      'amount': instance.amount,
      'user_id': instance.userId,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'completed_at': instance.completedAt?.toIso8601String(),
      'earning_overview': instance.earningOverview,
      'approval_status': _$ApprovalStatusEnumMap[instance.approvalStatus]!,
      'transaction_type': _$TransactionTypeEnumMap[instance.transactionType],
      'id': instance.id,
    };

const _$PaymentMethodsEnumMap = {
  PaymentMethods.MPESA: 'MPESA',
  PaymentMethods.AIRTEL_MONEY: 'AIRTEL_MONEY',
  PaymentMethods.T_CASH: 'T_CASH',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.PENDING: 'PENDING',
  PaymentStatus.COMPLETED: 'COMPLETED',
  PaymentStatus.FAILED: 'FAILED',
};

const _$ApprovalStatusEnumMap = {
  ApprovalStatus.APPROVED: 'APPROVED',
  ApprovalStatus.DECLINED: 'DECLINED',
  ApprovalStatus.PENDING: 'PENDING',
};

const _$TransactionTypeEnumMap = {
  TransactionType.DEPOSIT: 'DEPOSIT',
  TransactionType.WITHDRAWAL: 'WITHDRAWAL',
};

_$EarningItemImpl _$$EarningItemImplFromJson(Map<String, dynamic> json) =>
    _$EarningItemImpl(
      id: (json['id'] as num).toInt(),
      transactionId: (json['transaction_id'] as num?)?.toInt(),
      rentalItemId: (json['rental_item_id'] as num?)?.toInt(),
      paid: json['paid'] as bool,
      serviceFeeAmount: (json['service_fee_amount'] as num).toDouble(),
      rentalFeeAmount: (json['rental_fee_amount'] as num).toDouble(),
      effectiveAmount: (json['effective_amount'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$EarningItemImplToJson(_$EarningItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_id': instance.transactionId,
      'rental_item_id': instance.rentalItemId,
      'paid': instance.paid,
      'service_fee_amount': instance.serviceFeeAmount,
      'rental_fee_amount': instance.rentalFeeAmount,
      'effective_amount': instance.effectiveAmount,
      'description': instance.description,
    };
