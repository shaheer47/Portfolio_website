import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "My Expertise",
            subTitle: "My Strong Areas",
          ),
          Wrap(
            children: List.generate(
              services.length,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ServiceCard(index: index),
              ),
            ),
          )
        ],
      ),
    );
  }
}
