class Job {
  String? jobName;
  int? salary;
  Job(this.jobName, this.salary);
  Job.fromJsonMap(Map<String, dynamic> jsonMapJob) {
    jobName = jsonMapJob['jobName'];
    salary = jsonMapJob['salary'];
  }
  Map<String, dynamic> toJsonMap() =>
      {'jobName': this.jobName, 'salary': this.salary};
}
