enum MediaType { IMAGE, VIDEO }

// Services
enum ServiceStatus {
  initial,
  loading,
  success,
  failure,
  submitting,
  submissionFailure,
  submissionSuccess,
}

enum Menu { PROFILE, NOTIFICATIONS, ACTIVITY }

enum OTPChannels { EMAIL, SMS }

enum OTPPurpose {
  RESET_PASSWORD,
  VERIFY_EMAIL,
  NEW_USER_VERIFY_PHONE,
  ADMIN_LOGIN
}

// Cart & Checkout
enum CheckoutStatus { pending, processing, onTransit, cancelled, completed }

enum PaymentMethods {
  // CARD,
  MPESA,
  AIRTEL_MONEY,
  T_CASH
}

extension PaymentMethodsExtension on PaymentMethods {
  String get icon {
    switch (this) {
      case PaymentMethods.MPESA:
        return 'assets/icons/mpesa.png';
      // case PaymentMethods.CARD:
      //   return 'assets/icons/card.png';
      case PaymentMethods.AIRTEL_MONEY:
        return 'assets/icons/airtel-money.png';
      case PaymentMethods.T_CASH:
        return 'assets/icons/Tkash.png';
      default:
        return 'assets/icons/mpesa.png';
    }
  }
}

// Order
enum PaymentStatus { PENDING, COMPLETED, FAILED }

enum ApprovalStatus { APPROVED, DECLINED, PENDING }

enum TransactionType { DEPOSIT, WITHDRAWAL }
