import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../config/settings_provider.dart';

class settingView extends StatelessWidget {
  settingView({super.key});

  final List<String> themelist = ["Dark", "Light"];
  final List<String> languagelist = ["English", "عربي"];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            local.language,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            items: languagelist,
            initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
            decoration: CustomDropdownDecoration(
                expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_rounded,
                    color: vm.isDark() ? Color(0xffFACC1D) : Colors.black),
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                ),
                closedFillColor: vm.isDark() ? Color(0xff141A2E) : Colors.white,
                expandedFillColor:
                    vm.isDark() ? Color(0xff141A2E) : Colors.white),
            onChanged: (value) {
              if (value == "English") {
                vm.changeLanguage("en");
              } else if (value == "عربي") {
                vm.changeLanguage("ar");
              }
            },
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            local.theme,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            items: themelist,
            initialItem: vm.isDark() ? "Dark" : "Light",
            decoration: CustomDropdownDecoration(
                expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_rounded,
                    color: vm.isDark() ? Color(0xffFACC1D) : Colors.black),
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: vm.isDark() ? Color(0xffFACC1D) : Colors.black,
                ),
                closedFillColor: vm.isDark() ? Color(0xff141A2E) : Colors.white,
                expandedFillColor:
                    vm.isDark() ? Color(0xff141A2E) : Colors.white),
            onChanged: (value) {
              if (value == "Dark") {
                vm.changeThemeMode(ThemeMode.dark);
              } else if (value == "Light") {
                vm.changeThemeMode(ThemeMode.light);
              }
            },
          )
        ],
      ),
    );
  }
}
