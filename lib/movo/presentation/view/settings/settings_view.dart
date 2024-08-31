import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:movo/generated/l10n.dart';
import 'package:movo/core/helper/colory.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/core/utils/bottom_sheet.dart';
import 'package:movo/movo/presentation/manager/preference_manger/theme_cubit.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            S.of(context).appereance,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          leading: Container(
            width: 1.w,
            height: 7.w,
            decoration: BoxDecoration(
              color: Colory.yellow.color,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Column(
          children: [
            ListTile(
              onTap: () async {
                await context.read<ThemeCubit>().switchMode();
              },
              leading: const Icon(Icons.dark_mode_rounded),
              title: Text(S.of(context).dark_theme),
              subtitle: Text(S.of(context).dark_theme_subtitle),
              trailing: BlocBuilder<ThemeCubit, bool>(
                builder: (_, themeState) {
                  return Switch(
                    onChanged: (_) async {
                      await context.read<ThemeCubit>().switchMode();
                    },
                    value: context.read<ThemeCubit>().switched,
                  );
                },
              ),
            ),
            ListTile(
              onTap: () => bottomSheet(context),
              leading: const Icon(Icons.language_rounded),
              title: Text(S.of(context).app_lang),
              subtitle: Text(S.of(context).app_lang_subtitle),
            ),
          ],
        ),
      ],
    );
  }
}
