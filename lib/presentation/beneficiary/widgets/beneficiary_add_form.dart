import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'beneficiary_form_body.dart';

@RoutePage()
class BeneficiaryAddForm extends StatelessWidget {
  const BeneficiaryAddForm({super.key});

  @override
  Widget build(BuildContext context) => const BeneficiaryFormBody();
}
