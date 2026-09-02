import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'beneficiary_form_body.dart';

@RoutePage()
class BeneficiaryEditForm extends StatelessWidget {
  const BeneficiaryEditForm({super.key});

  @override
  Widget build(BuildContext context) => const BeneficiaryFormBody();
}