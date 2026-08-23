import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/helpers/shared_pref_helper.dart';

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getString(AppConstans.userToken);
  if (!userToken.isNullOrEmpty()) {
    isUserLogedIn = true;
  } else {
    isUserLogedIn = false;
  }
}
