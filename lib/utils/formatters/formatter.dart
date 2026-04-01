import 'package:intl/intl.dart';

class EFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }


static String formatCurrency(int amount) {
  final formatter = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '₹',
  );
  return formatter.format(amount);
}

 static String formatPhoneNumber(String phoneNumber) {
  // Remove spaces if any
  phoneNumber = phoneNumber.replaceAll(' ', '');

  // Handle 10-digit Indian number
  if (phoneNumber.length == 10) {
    return '${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
  }

  // Handle +91 numbers (12 digits)
  if (phoneNumber.length == 12 && phoneNumber.startsWith('91')) {
    return '+91 ${phoneNumber.substring(2, 7)} ${phoneNumber.substring(7)}';
  }

  return phoneNumber;
}


}
