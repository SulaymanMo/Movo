import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/generated/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:movo/core/helper/colory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../movo/presentation/manager/preference_manger/lang_cubit.dart';

Future<void> bottomSheet(BuildContext context) async {
  return showModalBottomSheet(
    context: context,
    showDragHandle: true,
    constraints: BoxConstraints(maxHeight: 35.h),
    builder: (_) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 0,
            child: Text(
              S.of(context).choose_lang,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: ListView.builder(
              itemCount: context.read<LangCubit>().langs.length,
              itemBuilder: (BuildContext context, int index) {
                return RadioListTile(
                  onChanged: (val) async {
                    context.pop();
                    context.read<LangCubit>().checked = index;
                    await context.read<LangCubit>().changeLang(
                          index: index,
                          langCode:
                              S.delegate.supportedLocales[index].languageCode,
                          countryCode:
                              S.delegate.supportedLocales[index].countryCode,
                        );
                  },
                  value: index,
                  activeColor: Colory.yellow.color,
                  groupValue: context.read<LangCubit>().checked,
                  title: Text(context.read<LangCubit>().langs[index]),
                );
              },
            ),
          ),
        ],
      );
    },
  );
}
