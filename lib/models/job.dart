class Job {
  Job({
    required this.jobId,
    required this.jobStatus,
    required this.jobDate,
    required this.jobTime,
    required this.customerPhoneNo,
    required this.jobAddress,
    required this.assignedTo,
    required this.description,
    required this.title,
    required this.subtitle,
    required this.completionRemarks,
    required this.photosOfWork,
    required this.requiredLevel,
  });
  late final int jobId;
  late final String jobStatus;
  late final String jobDate;
  late final String jobTime;
  late final String customerPhoneNo;
  late final String jobAddress;
  late final String assignedTo;
  late final String description;
  late final String title;
  late final String subtitle;
  late final String completionRemarks;
  late final int requiredLevel;
  late final List photosOfWork;

  Job.fromJson(Map<String, dynamic> json) {
    jobId = json['jobId'];
    jobStatus = json['jobStatus'];
    jobDate = json['jobDate'];
    jobTime = json['jobTime'];
    customerPhoneNo = json['customerPhoneNo'];
    jobAddress = json['jobAddress'];
    assignedTo = json['assignedTo'];
    description = json['description'];
    title = json['title'];
    subtitle = json['subtitle'];
    requiredLevel = json['requiredLevel'];
    completionRemarks = json['completionRemarks'];
    photosOfWork = json['photosOfWork'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['jobId'] = jobId;
    _data['jobStatus'] = jobStatus;
    _data['jobDate'] = jobDate;
    _data['jobTime'] = jobTime;
    _data['customerPhoneNo'] = customerPhoneNo;
    _data['jobAddress'] = jobAddress;
    _data['assignedTo'] = assignedTo;
    _data['description'] = description;
    _data['title'] = title;
    _data['subtitle'] = subtitle;
    _data['completionRemarks'] = completionRemarks;
    _data['photosOfWork'] = photosOfWork;
    _data['requiredLevel'] = requiredLevel;
    return _data;
  }
}
