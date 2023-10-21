// ignore_for_file: constant_identifier_names

class GlobalConstants {
  /// PrefKey
  static const String USERNAME = 'USERNAME';
  static const String PASSWORD = 'PASSWORD';
  static const String kBusiness = 'BUSINESS';
  static const String kUser = 'USER';
  static const String kToken = 'TOKEN';
  static const String kSkipOnboard = 'SKIP_ON_BOARD';
  static const String kLanguage = 'LANGAUAGE';
  static const String FONTFAMILY = 'FONT_FAMILY';
  static const String MENUDATA = 'MENU-DATA';
  static const String kTable = 'TABLE';
  static const String kNote= 'NOTE';
  static const String kCart= 'CART';
  static const String STAFFLIST= 'STAFFLIST';
  static int? idBusiness;
  /// List String Data
  static List<String> cashRegisterTypes = ['open', 'close'];
  static List<String> orderStatus = ['final', 'draft'];
  static List<String> discountTypes = ['fixed', 'percentage'];
  static List<String> orderShippings = [
    'ordered',
    'packed',
    'shipped',
    'delivered',
    'cancelled',
  ];
  static List<String> orderRecurs = [
    'days',
    'months',
    'years',
  ];
  static Map<String, String> barCodeTypes = {
    'EAN-13': 'EAN13',
    'EAN-8': 'EAN8',
    'UPC-A': 'UPCA',
    'UPC-E': 'UPCE',
    'Code 128 (C128)': 'C128',
    'Code 128 (C39)': 'C39'
  };
  static List<String> taxTypes = ['inclusive', 'exclusive'];
  static List<String> productTypes = ['single', 'variable'];
  static List<String> payTermTypes = ['days', 'months'];
  static List<String> fonts = ['Roboto', 'Manrope', 'Playfair Display'];
  static List<String> customerGroupTypes = [
    'Percentage',
    'Selling Price Group',
  ];
}
