class SignupModel {
  bool? status;
  Data? data;
  String? message;

  SignupModel({this.status, this.data, this.message});

  SignupModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  bool? emailVerificationStatus;

  Data({this.emailVerificationStatus});

  Data.fromJson(Map<String, dynamic> json) {
    emailVerificationStatus = json['email_verification_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email_verification_status'] = this.emailVerificationStatus;
    return data;
  }
}
