// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:optimedia/core/constants/colors_const.dart';

// class BaseView<T> extends StatefulWidget {
//   final T? viewModal;
//   final Widget Function(BuildContext context, T value)? onPageBuilder;
//   final Function(T model)? onModelReady;
//   final VoidCallback? onDispose;
//   const BaseView(
//       {Key? key,
//       required this.viewModal,
//       required this.onPageBuilder,
//       this.onModelReady,
//       this.onDispose});
//   @override
//   State<BaseView> createState() => _BaseViewState();
// }

// class _BaseViewState extends State<BaseView> {
//   var subscription;
//   var internetStatus;
//   @override
//   void initState() {
//     super.initState();
//     subscription = Connectivity().onConnectivityChanged.listen(
//       (ConnectivityResult event) {
//         setState(() {
//           internetStatus = event;
//         });
//       },
//     );
//     if (widget.onModelReady != null) widget.onModelReady!(widget.viewModal);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return internetStatus == ConnectivityResult.none
//         ? Scaffold(
//             backgroundColor: Colors.black,
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: Container(
//                     height: 339.h,
//                     width: 368.w,
//                     decoration: BoxDecoration(
//                         color: ColorConst.kBlackthirdColor,
//                         borderRadius: BorderRadius.circular(16.r)),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text("Нет Интернета",
//                             style: TextStyle(
//                                 color: ColorConst.kWhiteColor,
//                                 fontSize: 24.sp)),
//                         SizedBox(height: 30.h),
//                         Text("Проверьте ваше\nинтернет соединение",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 color: ColorConst.kWhiteColor,
//                                 fontSize: 18.sp)),
//                         SizedBox(height: 30.h),
//                         customButton("Обновить"),
//                         //ustomButton("Обновить"),
//                         SizedBox(height: 30.h),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.pushNamedAndRemoveUntil(
//                                 context, "/offline", (route) => false);
//                           },
//                           child: customButton("Перейти в скаченное"),
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         : widget.onPageBuilder!(context, widget.viewModal);
//   }

//   Widget customButton(String text) {
//     return Container(
//       height: 56.h,
//       width: 287.w,
//       decoration: BoxDecoration(
//           color: ColorConst.kBlackSecondaryColor,
//           borderRadius: BorderRadius.circular(43.r)),
//       child: Center(
//           child: Text(text,
//               style:
//                   TextStyle(color: ColorConst.kWhiteColor, fontSize: 18.sp))),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     if (widget.onDispose != null) {
//       widget.onDispose!();
//     }
//   }
// }
