import 'package:base/app/routes/routing_constants.dart';
import 'package:base/app/ui/pages/activity/activity_page.dart';
import 'package:base/app/ui/pages/class/class_page_page.dart';
import 'package:base/app/ui/pages/create_account/create_account_page.dart';
import 'package:base/app/ui/pages/login/login_page.dart';
import 'package:get/get.dart';

List<GetPage> generateRoute() {
  return [
    GetPage(
      name: LoginPageRoute,
      page: () => LoginPage(),
    ),
    GetPage(
      name: CreateAccountPageRoute,
      page: () => CreateAccountPage(),
    ),
    GetPage(
      name: ClassPageRoute,
      page: () => ClassPage(),
    ),
     GetPage(
      name: ActivityPageRoute,
      page: () => ActvitiyPage(),
    ),
  ];
}
