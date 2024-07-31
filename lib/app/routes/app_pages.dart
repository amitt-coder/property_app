import 'package:get/get_navigation/get_navigation.dart';
import 'package:property/app/modules/Login/login_binding.dart';
import 'package:property/app/modules/Login/login_screen.dart';
import 'package:property/app/modules/agreement/agreement_binding.dart';
import 'package:property/app/modules/agreement/agreement_screen.dart';
import 'package:property/app/modules/all_property/all_property_binding.dart';
import 'package:property/app/modules/all_property_details/all_property_details.dart';
import 'package:property/app/modules/all_tenants_detail/all_tenants_detail.dart';
import 'package:property/app/modules/all_tenants_detail/document/document_screen.dart';
import 'package:property/app/modules/all_tenants_detail/home_details/home_details_screen.dart';
import 'package:property/app/modules/all_tenants_detail/payment_history/payment_history_binding.dart';
import 'package:property/app/modules/all_tenants_detail/payment_history/payment_history_screen.dart';
import 'package:property/app/modules/all_tenants_detail/profile_information/profile_information_binding.dart';
import 'package:property/app/modules/all_tenants_detail/profile_information/profile_information_screen.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenant_edit/all_tenant_edit.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenant_edit/all_tenant_edit_binding.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenants_screen.dart';
import 'package:property/app/modules/billing_center/billing_center_binding.dart';
import 'package:property/app/modules/billing_center/billing_center_screen.dart';
import 'package:property/app/modules/bottom_navigation/bottom_navigation.dart';
import 'package:property/app/modules/bottom_navigation/bottom_navigation_binding.dart';
import 'package:property/app/modules/change_password/change_password_binding.dart';
import 'package:property/app/modules/change_password/change_password_screen.dart';
import 'package:property/app/modules/contact_list_screen/contact_list_binding.dart';
import 'package:property/app/modules/contact_us_property/contact_us_property_binding.dart';
import 'package:property/app/modules/contact_us_property/contact_us_property_screen.dart';
import 'package:property/app/modules/document/all_document.dart';
import 'package:property/app/modules/drawer/drawer_binding.dart';
import 'package:property/app/modules/drawer/drawer_screen.dart';
import 'package:property/app/modules/expenses_screen/expenses_binding.dart';
import 'package:property/app/modules/expenses_screen/expenses_screen.dart';
import 'package:property/app/modules/forgot_password/forgot_password_binding.dart';
import 'package:property/app/modules/home/home_binding.dart';
import 'package:property/app/modules/home/home_screen.dart';
import 'package:property/app/modules/language/langauge_screen.dart';
import 'package:property/app/modules/language/language_binding.dart';
import 'package:property/app/modules/maintains_tab/maintain_tab_binding.dart';
import 'package:property/app/modules/maintains_tab/maintain_tab_screen.dart';
import 'package:property/app/modules/notification/notification_binding.dart';
import 'package:property/app/modules/notification/notification_screen.dart';
import 'package:property/app/modules/properties_tabs/properties_tabs.dart';
import 'package:property/app/modules/report/earning/earning_binding.dart';
import 'package:property/app/modules/report/expenses_report/expenses_report_binding.dart';
import 'package:property/app/modules/report/expenses_report/expenses_report_screen.dart';
import 'package:property/app/modules/report/loss_profit_by_month/loss_profit_by_month.dart';
import 'package:property/app/modules/report/loss_profit_by_month/loss_profit_by_month_binding.dart';
import 'package:property/app/modules/report/maintenance_report/maintenance_report_binding.dart';
import 'package:property/app/modules/report/maintenance_report/maintenance_report_screen.dart';
import 'package:property/app/modules/report/occupancy/occupancy_binding.dart';
import 'package:property/app/modules/report/occupancy/occupancy_screen.dart';
import 'package:property/app/modules/report/report_binding.dart';
import 'package:property/app/modules/report/report_screen.dart';
import 'package:property/app/modules/report/tenant_report/tenant_report.dart';
import 'package:property/app/modules/report/tenant_report/tenant_report_binding.dart';
import 'package:property/app/modules/signup/signup_binding.dart';
import 'package:property/app/modules/signup/signup_screen.dart';
import 'package:property/app/modules/splash/splash_view.dart';
import 'package:property/app/modules/subscription_tabs/subscription_tabs_binding.dart';
import 'package:property/app/modules/tenants/tenants_binding.dart';
import 'package:property/app/modules/tenants/tenants_screen.dart';
import 'package:property/app/modules/upload_listing/upload_listing_binding.dart';
import 'package:property/app/modules/upload_listing/upload_listing_screen.dart';
import 'package:property/app/routes/app_routes.dart';

import '../modules/all_listing/all_listing_binding.dart';
import '../modules/all_listing/all_listing_screen.dart';
import '../modules/all_property_details/all_property_detail_binding.dart';
import '../modules/all_tenants_detail/all_tenants_detail_binding.dart';
import '../modules/all_tenants_detail/document/document_binding.dart';
import '../modules/all_tenants_detail/home_details/home_details_binding.dart';
import '../modules/all_tenants_screen/all_tenants_binding.dart';
import '../modules/billing_center/view_billing_center/view_billing_center.dart';
import '../modules/billing_center/view_billing_center/view_billing_center_binding.dart';
import '../modules/document/all_document_binding.dart';
import '../modules/forgot_password/forgot_password_screen.dart';
import '../modules/properties_tabs/properties_tab_binding.dart';
import '../modules/property_details(Listing)/property_detail_binding.dart';
import '../modules/property_details(Listing)/property_details_screen.dart';
import '../modules/report/earning/earning_screen.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/subscription_tabs/subscription_tabs.dart';

class AppPages {
  static const INITIAL = AppRoutes.SPLASH;

  static final routes = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: AppRoutes.SIGNUP,
        page: () => SignupScreen(),
        binding: SignupBinding()),
    GetPage(
        name: AppRoutes.FORGOTPASSWORD,
        page: () => ForgotPasswordScreen(),
        binding: ForgotPasswordBinding()),
    GetPage(
        name: AppRoutes.BOTTOMNAVIGATION,
        page: () => BottomNavigation(),
        binding: BottomNavigationBinding()),
    GetPage(
        name: AppRoutes.DRAWERs,
        page: () => DrawerScreen(),
        binding: DrawerBinding()),
    GetPage(
        name: AppRoutes.UPLOADINGLISTING,
        page: () => UploadListingScreen(),
        binding: UploadListingBinding()),
    GetPage(
        name: AppRoutes.ALLLISTING,
        page: () => AllListingScreen(),
        binding: AllListingBinding()),
    GetPage(
        name: AppRoutes.PROPERTYDETAIL,
        page: () => PropertyDetailsScreen(),
        binding: PropertyDetailBinding()),
    GetPage(
        name: AppRoutes.CONTACTUSEPROPERTY,
        page: () => ContactUsPropertyScreen(),
        binding: ContactUsPropertyBinding()),
    GetPage(
        name: AppRoutes.CONTACTLIST,
        page: () => ContactUsPropertyScreen(),
        binding: ContactListBinding()),
    GetPage(
        name: AppRoutes.CHANGEPASSWORD,
        page: () => ChangePasswordScreen(),
        binding: ChangePasswordBinding()),
    GetPage(
        name: AppRoutes.LANGUAGE,
        page: () => LangaugeScreen(),
        binding: LanguageBinding()),
    GetPage(
        name: AppRoutes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(
        name: AppRoutes.PROPERTYTAB,
        page: () => PropertiesTabs(),
        binding: PropertiesTabBinding()),
    GetPage(
        name: AppRoutes.ALLPROPERTYDETAIL,
        page: () => AllPropertyDetails(),
        binding: AllPropertyDetailBinding()),
    GetPage(
        name: AppRoutes.TENANTS,
        page: () => TenantsScreen(),
        binding: TenantsBinding()),
    GetPage(
        name: AppRoutes.ALLTENANTS,
        page: () => AllTenantsScreen(),
        binding: AllTenantsBinding()),
    GetPage(
        name: AppRoutes.ALLTENANTSDETAIL,
        page: () => AllTenantsDetail(),
        binding: AllTenantsDetailBinding()),
    GetPage(
        name: AppRoutes.PROFILEINFORMATION,
        page: () => ProfileInformationScreen(),
        binding: ProfileInformationBinding()),
    GetPage(
        name: AppRoutes.HOMEDETAILS,
        page: () => HomeDetailsScreen(),
        binding: HomeDetailsBinding()),
    GetPage(
        name: AppRoutes.PAYMENTHISTORY,
        page: () => PaymentHistoryScreen(),
        binding: PaymentHistoryBinding()),
    GetPage(
        name: AppRoutes.DOCUMENT,
        page: () => DocumentScreen(),
        binding: DocumentBinding()),
    GetPage(
        name: AppRoutes.BILLINGCENTER,
        page: () => BillingCenterScreen(),
        binding: BillingCenterBinding()),
    GetPage(
        name: AppRoutes.VIEWBILLINGCENTER,
        page: () => ViewBillingCenter(),
        binding: ViewBillingCenterBinding()),
    GetPage(
        name: AppRoutes.EXPENSES,
        page: () => ExpensesScreen(),
        binding: ExpensesBinding()),
    GetPage(
        name: AppRoutes.ALLDOCUMENT,
        page: () => AllDocumentScreen(),
        binding: AllDocumentBinding()),
    GetPage(
        name: AppRoutes.MAINTAINTAB,
        page: () => MaintainTabScreen(),
        binding: MaintainTabBinding()),
    GetPage(
        name: AppRoutes.SUBSCRIPTIONTAB,
        page: () => SubcriptionTabs(),
        binding: SubscriptionTabsBinding()),
    GetPage(
        name: AppRoutes.REPORT,
        page: () => ReportScreen(),
        binding: ReportBinding()),
    GetPage(
        name: AppRoutes.AGREEMENT,
        page: () => AgreementScreen(),
        binding: AgreementBinding()),
    GetPage(
        name: AppRoutes.EARNING,
        page: () => EarningScreen(),
        binding: EarningBinding()),
    GetPage(
        name: AppRoutes.LOSSPROFITBYMONTH,
        page: () => LossProfitByMonth(),
        binding: LossProfitByMonthBinding()),
    GetPage(
        name: AppRoutes.EXPENSESREPORT,
        page: () => ExpensesReportScreen(),
        binding: ExpensesReportBinding()),
    GetPage(
        name: AppRoutes.OCCUPANCY,
        page: () => OccupancyScreen(),
        binding: OccupancyBinding()),
    GetPage(
        name: AppRoutes.MAINTENANCEREPORT,
        page: () => MaintenanceReportScreen(),
        binding: MaintenanceReportBinding()),
    GetPage(
        name: AppRoutes.TENANTREPORT,
        page: () => TenantReport(),
        binding: TenantReportBinding()),
    GetPage(
        name: AppRoutes.AllTENANTEDIT,
        page: () => AllTenantEdit(),
        binding: AllTenantEditBinding()),
    GetPage(
        name: AppRoutes.NOTIFICATION,
        page: () => NotificationScreen(),
        binding: NotificationBinding()),
  ];
}
