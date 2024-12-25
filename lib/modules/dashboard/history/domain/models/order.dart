import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required int id,
    required bool completed,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'payment_id') int? paymentId,
    required double fee,
    @JsonKey(name: 'shipment_fee') required double shipmentFee,
    @JsonKey(name: 'reference_number') required String referenceNumber,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    String? note,
    @JsonKey(name: 'rental_items') required List<RentalItemData> rentalItems,
    Payment? payment,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class RentalItemData with _$RentalItemData {
  const factory RentalItemData({
    required int id,
    @JsonKey(name: 'has_reviewed') required bool hasReviewed,
    @JsonKey(name: 'return_date') DateTime? returnDate,
    @JsonKey(name: "product_id") required int productId,
    @JsonKey(name: "rental_id") required int rentalId,
    String? note,
    required int units,
    required double fee,
    @JsonKey(name: "product_variant") Variant? variant,
    required Product product,
    @JsonKey(name: "merchant_return_confirmed")
    required bool merchantReturnConfirmed,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "customer_return_confirmed")
    required bool customerReturnConfirmed,
  }) = _RentalItemData;

  factory RentalItemData.fromJson(Map<String, dynamic> json) =>
      _$RentalItemDataFromJson(json);
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    String? details,
    @JsonKey(name: 'transaction_reference') String? transactionReference,
    @JsonKey(name: 'account_debited') String? accountDebited,
    @JsonKey(name: 'transaction_receipt') String? transactionReceipt,
    @JsonKey(name: 'payment_method') required PaymentMethods paymentMethod,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required double amount,
    @JsonKey(name: 'user_id') required int userId,
    required PaymentStatus status,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'earning_overview')
    required List<EarningItem> earningOverview,
    @JsonKey(name: 'approval_status') required ApprovalStatus approvalStatus,
    @JsonKey(name: 'transaction_type') TransactionType? transactionType,
    required int id,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class EarningItem with _$EarningItem {
  const factory EarningItem({
    required int id,
    @JsonKey(name: "transaction_id") int? transactionId,
    @JsonKey(name: "rental_item_id") int? rentalItemId,
    required bool paid,
    @JsonKey(name: 'service_fee_amount') required double serviceFeeAmount,
    @JsonKey(name: 'rental_fee_amount') required double rentalFeeAmount,
    @JsonKey(name: 'effective_amount') required double effectiveAmount,
    required String description,
  }) = _EarningItem;

  factory EarningItem.fromJson(Map<String, dynamic> json) =>
      _$EarningItemFromJson(json);
}
