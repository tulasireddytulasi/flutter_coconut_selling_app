enum NetworkStatus { online, offline }

extension NetworkStatusExtension on NetworkStatus {
  String? asString() => {
        NetworkStatus.offline: "Offline",
        NetworkStatus.online: "Online",
      }[this];
}
