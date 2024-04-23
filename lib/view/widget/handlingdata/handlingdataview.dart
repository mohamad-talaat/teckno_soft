import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:teckno_soft/utils/class/statusrequest.dart';
import 'package:teckno_soft/utils/constant/imgaeasset.dart';


class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImages.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offline
            ? Center(
                child: Lottie.asset(AppImages.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImages.server,
                        width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImages.noData,
                            width: 250, height: 250, repeat: false))
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImages.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offline
            ? Center(
                child: Lottie.asset(AppImages.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImages.server,
                        width: 250, height: 250))
                : widget;
  }
}
