import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/widgets/app_button.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/domain/models/password_change_model.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/providers/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:route_mate/routes/go_route.dart';

class PasswordChangeForm extends StatefulWidget {
  const PasswordChangeForm({super.key});

  @override
  State<PasswordChangeForm> createState() => _PasswordChangeFormState();
}

class _PasswordChangeFormState extends State<PasswordChangeForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isObscureCurrent = true;
  bool _isObscureNew = true;
  bool _isObscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PasswordBloc, PasswordState>(
      listener: (context, state) {
        if (state.status == ServiceStatus.submissionSuccess) {
          context.pop();
          context.goNamed(AppRoutes.login);
        }
        if (state.message != null) {
          Helpers.showSnackBar(context, state.message!);
        }
      },
      listenWhen: (previous, current) =>
          previous.status != current.status ||
          previous.message != current.message,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Change your password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: AppBar().preferredSize.height / 2,
              ),
              TextFormField(
                controller: _currentPasswordController,
                obscureText: _isObscureCurrent,
                decoration: InputDecoration(
                  labelText: 'Current Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscureCurrent
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscureCurrent = !_isObscureCurrent;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your current password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: kMedium),
              TextFormField(
                controller: _newPasswordController,
                obscureText: _isObscureNew,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscureNew ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscureNew = !_isObscureNew;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a new password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              const SizedBox(height: kMedium),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: _isObscureConfirm,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscureConfirm
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscureConfirm = !_isObscureConfirm;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  } else if (value != _newPasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              AuthButton(
                  text: "Change Password",
                  loading: false,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // Add your password change logic here
                      context.read<PasswordBloc>().add(
                            SubmitPasswords(
                              payload: PasswordChangeModel(
                                newPassword: _newPasswordController.text,
                                oldPassword: _currentPasswordController.text,
                              ),
                            ),
                          );
                    } else {
                      Helpers.showSnackBar(
                          context,
                          const SnackMessage(
                              tone: SnackTone.error,
                              message: "Fill in the form correctly"));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
