import 'package:admin/controllers/MenuController.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

// class Header extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     return Row(
//       children: [
//
//         if (!Responsive.isMobile(context))
//           // Text  (
//           //   "Dashboard",
//           //   style: Theme.of(context).textTheme.headline6,
//           // ),
//         if (!Responsive.isMobile(context))
//           Responsive(
//             mobile: FileInfoCardGridView(
//               crossAxisCount: _size.width < 650 ? 2 : 4,
//               childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
//             ),
//             tablet: FileInfoCardGridView(),
//             desktop: FileInfoCardGridView(
//               childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
//             ),
//           ),
//       ],
//     );
//   }
// }


class OpenDrawer extends StatelessWidget {
  const OpenDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          // color: Colors.grey,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed: context.read<MenuController>().controlMenu,
            ),
        ],
      ),
    );
  }
}

// class FileInfoCardGridView extends StatelessWidget {
//   const FileInfoCardGridView({
//     Key? key,
//     this.crossAxisCount = 4,
//     this.childAspectRatio = 1,
//   }) : super(key: key);
//
//   final int crossAxisCount;
//   final double childAspectRatio;
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: demoMyFiles.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: defaultPadding,
//         mainAxisSpacing: defaultPadding,
//         childAspectRatio: childAspectRatio,
//       ),
//       itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
//     );
//   }
// }