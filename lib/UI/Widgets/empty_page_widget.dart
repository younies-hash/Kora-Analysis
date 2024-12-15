import 'package:flutter/widgets.dart';
import 'package:kora_analysis/Localization/localizer.dart';
import 'package:kora_analysis/UI/Widgets/Kora%20Text%20Widgets/kora_header.dart';
import 'package:provider/provider.dart';

class EmptyPageNote extends StatelessWidget {
  const EmptyPageNote({super.key});
  @override
  Widget build(BuildContext context) {
    final localizer = Provider.of<Localizer>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: KoraHeader(localizer.labels.empty_content),
        ),
      ],
    );
  }
}

class UnderConstructionNote extends StatelessWidget {
  const UnderConstructionNote({super.key});
  @override
  Widget build(BuildContext context) {
    final localizer = Provider.of<Localizer>(context);
    return Center(
      child: Text(localizer.labels.under_construction),
    );
  }
}
