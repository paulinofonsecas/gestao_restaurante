import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class ImagemInputField extends StatelessWidget {
  const ImagemInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FormBuilderImagePicker(
          name: 'photos',
          maxImages: 5,
          previewMargin: const EdgeInsets.all(10),
          decoration: const InputDecoration(
            labelText: 'Selecione as fotos do prato',
          ),
        ),
      ],
    );
  }
}
