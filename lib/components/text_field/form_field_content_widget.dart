// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_components/components/text_field/login_text_field.dart';


class FormFieldContentWidget extends StatefulWidget {
  final TextEditingController userController;
  final TextEditingController passwordController;
  final Function(String) onChangeUser;
  final Function(String) onChangePassword;
  final VoidCallback onPressed;
  // final bool isClearContent;
  const FormFieldContentWidget({
    Key? key,
    required this.userController,
    required this.passwordController,
    required this.onChangeUser,
    required this.onChangePassword,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<FormFieldContentWidget> createState() => _FormFieldContentWidgetState();
}

class _FormFieldContentWidgetState extends State<FormFieldContentWidget> {
  bool isPasswordVisible = true;

  @override
  void initState() {
    super.initState();

    widget.userController.addListener(() {
      setState(() {
        widget.userController.text.isNotEmpty;
      });
    });
    widget.passwordController.addListener(() {
      setState(() {
        widget.passwordController.text.isNotEmpty;
      });
    });
  }

  clearContent() {
    widget.userController.clear();
    widget.passwordController.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    widget.userController.dispose();
    widget.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LoginTextField(
          controller: widget.userController,
          onChanged: widget.onChangeUser,
          hintText: "รหัสตัวแทนคู่ค้า",
          icon: FaIcon(
            FontAwesomeIcons.userLarge,
            size: 16,
            color: Colors.grey.shade400,
          ),
          suffixIcon: widget.userController.text.isEmpty
              ? const SizedBox.shrink()
              : IconButton(
                  onPressed: () => widget.userController.clear(),
                  icon: const Icon(Icons.close),
                ),
        ),
        LoginTextField(
          controller: widget.passwordController,
          onChanged: widget.onChangePassword,
          isSecure: isPasswordVisible,
          hintText: "รหัสผ่าน",
          icon: FaIcon(
            FontAwesomeIcons.key,
            size: 16,
            color: Colors.grey.shade400,
          ),
          suffixIcon: widget.passwordController.text.isEmpty
              ? const SizedBox.shrink()
              : isPasswordVisible
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: const Icon(Icons.visibility_off))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: const Icon(Icons.visibility)),
        ),
        ElevatedButton(
          onPressed: widget.onPressed,
          child: Text("เข้าสู่ระบบ", style: Theme.of(context).textTheme.button),
        ),
      ],
    );
  }
}
