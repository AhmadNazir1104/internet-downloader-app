class Result {
  late String sign;
  late String date;
  late String time;
  late String ping;
  late String download;
  late String upload;
  Result(
      {required this.sign,
      required this.date,
      required this.time,
      required this.ping,
      required this.download,
      required this.upload});

  factory Result.fromJSON(Map<String, dynamic> map) {
    return Result(
        sign: "sign",
        date: "date",
        time: "",
        ping: "",
        download: " ",
        upload: "upload");
  }
}
