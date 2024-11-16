import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_desktop.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_mob.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {

    return 
    LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>600){
        return const ContactDesktop();
      }else{
        return const ContactMob();
      }
    });
  }
}




