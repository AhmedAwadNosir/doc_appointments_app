import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/helpers/shared_pref_helper.dart';

Future<void> checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    AppConstans.userToken,
  );
  if (!userToken.isNullOrEmpty()) {
    isUserLogedIn = true;
  } else {
    isUserLogedIn = false;
  }
}
