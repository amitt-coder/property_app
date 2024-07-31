import 'package:get/get.dart';

class ChangePasswordController extends GetxController{

  RxBool  isCheck=true.obs;
  RxBool newPassword=true.obs;
  RxBool newconfirmPassword=true.obs;




  void setIsCheck(){
    print("function got called");
    isCheck.toggle();
    update();
  }

  void setnewPassword(){
    newPassword.toggle();
    update();
  }
  void setnewconfirmPassword(){
    newconfirmPassword.toggle();
    update();
  }
}