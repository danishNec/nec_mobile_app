import 'package:flutter/material.dart';

import '../../../domain/beneficiary/beneficiary_list_dto.dart';
import '../../core/widgets/app_beneficiary_tile.dart';

class BeneficiaryTile extends StatelessWidget {
  final BeneficiaryList beneficiary;
  final VoidCallback? onTap;
  final VoidCallback? onMoreTap;

  const BeneficiaryTile({
    super.key,
    required this.beneficiary,
    this.onTap,
    this.onMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    final b = beneficiary;

    final name = [b.beneficiaryFirstName, b.beneficiaryLastName]
        .where((s) => s?.trim().isNotEmpty == true)
        .map((s) => s!.trim())
        .join(' ');

    return AppBeneficiaryTile(
      name: name,
      onTap: onTap,
      onMoreTap: onMoreTap,
      rawAccountNumber: b.beneficiaryBankAccountNumber,
      disbursalMode: b.disbursalMode,
      bankName: b.beneficiaryBankName,
      countryCode: b.beneficiaryCountryCode,
      currencyCode: b.currencyCode,
    );
  }
}
