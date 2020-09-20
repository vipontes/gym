class Training {
  int trainingId;
  int userId;
  String trainingDate;
  String trainingDescription;

  Training(
      {this.trainingId,
      this.userId,
      this.trainingDate,
      this.trainingDescription});

  Training.fromJson(Map<String, dynamic> json) {
    trainingId = json['trainingId'];
    userId = json['userId'];
    trainingDate = json['trainingDate'];
    trainingDescription = json['trainingDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trainingId'] = this.trainingId;
    data['userId'] = this.userId;
    data['trainingDate'] = this.trainingDate;
    data['trainingDescription'] = this.trainingDescription;
    return data;
  }

  static List<Training> listFromJson(List<dynamic> json) {
    List<Training> trainings = List();

    for (final item in json) {
      Training training = Training();

      training.trainingId = item["trainingId"];
      training.userId = item["userId"];
      training.trainingDate = item["trainingDate"];
      training.trainingDescription = item["trainingDescription"];

      trainings.add(training);
    }
    return trainings;
  }
}
