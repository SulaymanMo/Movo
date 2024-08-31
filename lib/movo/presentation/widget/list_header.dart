import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:sizer/sizer.dart';
import '../../../core/helper/colory.dart';
import '../../../generated/l10n.dart';
import '../view/see_all.dart/see_all_view.dart';

class ListHeader<C extends Cubit<T>, T> extends StatelessWidget {
  const ListHeader({
    required this.title,
    this.subTitle,
    required this.hasBtn,
    super.key,
  });
  final bool hasBtn;
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
      leading: Container(
        width: 1.5.w,
        height: 4.h,
        decoration: BoxDecoration(
          color: Colory.yellow.color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      title: Text(
        title,
        style: context.textTheme.headlineSmall,
      ),
      subtitle: subTitle != null
          ? Text(subTitle!, style: context.textTheme.labelSmall)
          : null,
      trailing: hasBtn == false
          ? null
          : TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider<C>.value(
                      value: context.read<C>(),
                      child: SeeAllView<C, T>(title: title),
                    ),
                  ),
                );
              },
              style: context.theme.textButtonTheme.style,
              child: Text(S.of(context).see_all),
            ),
    );
  }
}
