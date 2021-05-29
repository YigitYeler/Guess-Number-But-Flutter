class Response {
  String href;
  int resultStatus;
  Null data;
  List<ValidationErrors> validationErrors;
  String message;
  String detail;
  int statusCode;

  Response(
      {this.href,
      this.resultStatus,
      this.data,
      this.validationErrors,
      this.message,
      this.detail,
      this.statusCode});

  Response.fromJson(Map<String, dynamic> json) {
    href = json['Href'];
    resultStatus = json['ResultStatus'];
    data = json['Data'];
    if (json['ValidationErrors'] != null) {
      validationErrors = <ValidationErrors>[];
      json['ValidationErrors'].forEach((v) {
        validationErrors.add(new ValidationErrors.fromJson(v));
      });
    }
    message = json['Message'];
    detail = json['Detail'];
    statusCode = json['StatusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Href'] = this.href;
    data['ResultStatus'] = this.resultStatus;
    data['Data'] = this.data;
    if (this.validationErrors != null) {
      data['ValidationErrors'] =
          this.validationErrors.map((v) => v.toJson()).toList();
    }
    data['Message'] = this.message;
    data['Detail'] = this.detail;
    data['StatusCode'] = this.statusCode;
    return data;
  }
}

class ValidationErrors {
  String propertyName;
  String message;

  ValidationErrors({this.propertyName, this.message});

  ValidationErrors.fromJson(Map<String, dynamic> json) {
    propertyName = json['PropertyName'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PropertyName'] = this.propertyName;
    data['Message'] = this.message;
    return data;
  }
}
