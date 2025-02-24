// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:scanner/core/core.dart';

extension HealthStatusEnumExtension on HealthStatusEnum {
  String? get title {
    if (this case HealthStatusEnum.underInvestigation) {
      return 'Possible COVID-19 Exposure';
    } else if (this case HealthStatusEnum.asymptomatic) {
      return 'You may have been exposed to COVID-19';
    } else if (this case HealthStatusEnum.symptomatic) {
      return 'You may be experiencing COVID-19 symptoms';
    } else if (this case HealthStatusEnum.recovered) {
      return 'You have recovered from COVID-19';
    }

    return null;
  }

  String? get description {
    if (this case HealthStatusEnum.underInvestigation) {
      return 'Please monitor your symptoms and consider getting tested';
    } else if (this case HealthStatusEnum.asymptomatic) {
      return 'Some individuals can spread the virus without feeling sick';
    } else if (this case HealthStatusEnum.symptomatic) {
      return 'Common symptoms include fever, cough, sore throat, shortness of breath, and loss of taste or smell';
    } else if (this case HealthStatusEnum.recovered) {
      return 'While you are no longer infectious, staying mindful of your health is important';
    }

    return null;
  }

  Color? get color {
    if (this case HealthStatusEnum.underInvestigation) {
      return Colors.amber.shade700;
    } else if (this
        case HealthStatusEnum.symptomatic || HealthStatusEnum.asymptomatic) {
      return Colors.red.shade700;
    } else if (this case HealthStatusEnum.recovered) {
      return Colors.green.shade700;
    }

    return null;
  }

  IconData? get icon {
    if (this case HealthStatusEnum.underInvestigation) {
      return Icons.warning;
    } else if (this
        case HealthStatusEnum.asymptomatic || HealthStatusEnum.symptomatic) {
      return Icons.info;
    } else if (this case HealthStatusEnum.recovered) {
      return Icons.check;
    }

    return null;
  }
}
