import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:persistence_in_flutter/core/presentation/componentes/brand/brand_image.dart';
import 'package:persistence_in_flutter/core/presentation/componentes/brand/brand_title.dart';
import 'package:persistence_in_flutter/core/presentation/componentes/buttons/defaultTextButton.dart';
import 'package:persistence_in_flutter/core/presentation/componentes/checkbox/checkbox.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RxBool checado = false.obs;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BrandTitleWidget(),
            BrandImageWidget(
              widith: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            _buildWelcomeText(),
            Obx(() => Checkbox(
                value: checado.value,
                onChanged: (value) {
                  checado.value = !checado.value;
                })),
            _buildBottonRow(),
          ],
        ),
      ),
    );
  }

  _buildWelcomeText() {
    return Text(
      "Seja Bem vindo(a) ao PeF Delivery",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18),
    );
  }

  _buildBottonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //CheckBoxWiodget(),

        DefaultTextButton(
          text: "Avançar",
          onPress: () {},
          textFontSize: 24,
        )
      ],
    );
  }
}
