// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';

import '../../flutter_package_for_personal.dart';
import '../enum/enum.dart';
import '../model/job_title_model.dart';
import '../provider/suggestion_text_field_provider.dart';
import '../text/custom_text.dart';

class CustomSuggestionTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String title;
  final String name;
  final SuggestionType type;
  final Function(int) onIdSelected;
  final Function(bool) onChanged;
  final FocusNode? focusNode;
  final bool EnableAddOption;

  const CustomSuggestionTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.title,
    required this.name,
    required this.type,
    required this.onIdSelected,
    required this.onChanged,
    required this.EnableAddOption,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final suggestionProvider = Provider.of<SuggestionProvider>(context);

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 25,
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: TypeAheadField<JobTitleModel1>(
        controller: controller,
        builder: (context, controller, focusNode) {
          return CustomTextFieldforAll(
            controller: controller,
            hint: hintText,
            focusNode: focusNode,
          );
        },
        decorationBuilder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Constants.white,
            ),
            child: child,
          );
        },
        suggestionsCallback: (pattern) async {
          if (pattern.isNotEmpty) {
            await suggestionProvider.fetchSuggestions(pattern, name, type);
            return suggestionProvider.suggestions;
          }
          return [];
        },
        itemBuilder: (context, suggestion) {
          List<String> parts = suggestion.formateData.toString().split(',');
          if (parts.length > 1) {
            parts.removeLast(); // remove last element
          }
          final data = parts.map((e) => e.trim()).join(', ');
          return Container(
            decoration: BoxDecoration(
              color:
                  (suggestionProvider.suggestions.indexOf(suggestion) % 2 == 0)
                  ? Constants.lightdull
                  : Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: customText(
                title: type == SuggestionType.resideat
                    ? (data)
                    : (suggestion.value ?? ''),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        onSelected: (suggestion) {
          List<String> parts = suggestion.formateData.toString().split(',');
          if (parts.length > 1) {
            parts.removeLast(); // remove last element
          }
          final data = parts.map((e) => e.trim()).join(', ');
          controller.text = type == SuggestionType.resideat
              ? data
              : suggestion.value ?? '';
          onChanged(true);
          onIdSelected(suggestion.id ?? 0);
          FocusScope.of(context).unfocus();
        },
        emptyBuilder: (context) {
          if (controller.text.isEmpty) {
            return const SizedBox.shrink();
          }
          return InkWell(
            onTap: () {
              if (type == SuggestionType.resideat) {
                FocusScope.of(context).unfocus();
                controller.clear();
              }
              if (name == "pin_code" && controller.text.length < 6) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please enter a valid pin code."),
                    duration: Duration(seconds: 2),
                  ),
                );
              } else {
                FocusManager.instance.primaryFocus?.unfocus(); // ✅ yeh lagao
                onChanged(true);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Constants.lightdull,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: customText(
                  monst: true,
                  fontSize: 12,
                  title: EnableAddOption ? "Add $title" : "No result found.",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
