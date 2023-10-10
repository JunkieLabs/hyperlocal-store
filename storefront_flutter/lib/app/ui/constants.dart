class UiConstants {
  static const _Routes Routes = const _Routes();
  static const _RequestCodes RequestCodes = const _RequestCodes();
  static const int REQUEST_CODE_DEFAULT = _RequestCodes.DEFAULT;
  static const _BundleArgs BundleArgs = const _BundleArgs();
}

class _Routes {
  const _Routes();

  
  final String splash = '/splash/';

  final String onboard = '/onboard/';
  final String onboardContacts = '/onboard/contacts';
  final String onboardCommune = '/onboard/commune';
  final String onboardFriends = '/onboard/friends';
  final String onboardPayments = '/onboard/payments';
  final String onboardAllSet = '/onboard/all-set';

  final String authGoogle = '/auth/google';

  final String account = '/account/';
  final String accountEdit = '/account/edit';

  
  final String contacts = '/contacts/';

  final String communes = '/communes/';
  final String communesEdit = '/communes/edit';
  final String communesConfigure = '/communes/configure';
  final String communeDetail = '/communes/detail';
  final String communeRequests = '/commune-requests/';

  
  final String communeBankers = '/commune-bankers/';
  final String communeBankerDetail = '/commune-bankers/detail';


  final String communeEvents = '/commune-events/';
  
  final String eventBonds = '/event-bonds/';
  final String eventBondDetail = '/event-bonds/detail';

  final String friends = '/friends';
  final String friendDetail = '/friends/detail';

  final String payments = '/payments/';
  final String paymentsEdit = '/payments/edit';
  // final String paymentsEdit = '/payments/edit';

  
  final String notifications = '/notifications/';

  
  final String bondDetail = '/bonds/detail';

  final String home = '/home/';
  final String homeDetails = '/home/details/';
  // final String homeAnalysis = '/home/analysis/';
  final String homeTransactions = '/home/transactions/';
  final String homeAccount = '/home/account/';


  
  final String activeBonds = '/active-bonds/';

  final String about = '/about/';

// PhoneLoginWidget

  final String dialogLoginPhone= "/dialog/login/phone";
  final String dialogAuth= "/dialog/auth";
  final String dialogAlert= "/dialog/alert";
  final String dialogProgress= "/dialog/progress";
  
  final String labs = "/labs";
  final String labsOnboard = "/labs/onboards";
  final String labsAuth = "/labs/auth";
  final String labsChats = "/labs/chats";
  final String labsContacts = "/labs/contacts";
  final String labsCommune = "/labs/commune";
  final String labsEvents = "/labs/events";
  final String labsEventBonds = "/labs/event-bonds";
  final String labsCommon = "/labs/common";
  final String labsPayment = "/labs/payment";
  final String labsFriend = "/labs/friend";
  final String labsAccount = "/labs/account";
  final String labsCommonMedia = "/labs/common/media";
  final String labsNotification = "/labs/notification";

  //
  final String TRASH = '/trash';
}

class _RequestCodes {
  const _RequestCodes();

  static const int DEFAULT = 0;
  final int tagsSearch = 101;
}

class _BundleArgs {
  const _BundleArgs();
  final String argResultCode = 'resultCode';
  final String argRequestCode = 'requestCode';
  final String argData = 'data';
  final String argMessage = 'message';

  final int resultSuccess = 0x10;
  final int resultCanceled = 0x02;
  final int resultFailed = 0x01;

  final String argDataChatThread = 'chatThread';

  final String argDataIsChanged = 'isChanged';
  final String argDataIsRemoved = 'isRemoved';

  final String argDataPiece = 'piece';
  final String argDataTitle = 'title';
  final String argDataCollection = "collection";

  ///  used inside web
  final String argDataPageUrl = "pageUrl";
  final String argDataPageIsMinimal = "isMinimalUi";

  final String argDataNotificationAction = "notificationAction";
  // final String argDataIsNotificationNavigation = "isNotificationNavigation";
}
