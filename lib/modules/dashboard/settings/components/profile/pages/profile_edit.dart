import 'dart:io';

import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/widgets/image_shimmer.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/authentication/domain/models/user.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/authentication/providers/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final _formKey = GlobalKey<FormState>();

  // Retrieve user from AuthenticationRepository
  final user = AuthenticationRepository.instance.user;

  // Controllers to handle user input fields
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  File? profileImage;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: user?.name);
    _emailController = TextEditingController(text: user?.email);
    _phoneController = TextEditingController(text: user?.phone);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state.message != null) {
          Helpers.showSnackBar(context, state.message!);
        }
      },
      listenWhen: (previous, current) => previous.message != current.message,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Profile"),
          actions: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.status == ServiceStatus.submitting
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: SpinnerWidget(
                          size: kMedium,
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
            const SizedBox(
              width: kSMedium,
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image
              GestureDetector(
                onTap: () {
                  // Logic to change profile image
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // CachedImage(
                    //   height: 120,
                    //   width: 120,
                    //   radius: 120,
                    //   url: user!.profileImage,
                    // ),
                    const Positioned(
                      bottom: 0,
                      right: 10,
                      child: CircleAvatar(
                        radius: 18,
                        child: Icon(Icons.camera_alt,
                            color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Profile Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Name Field
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        prefixIcon: Icon(Icons.person,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      validator: (value) {
                        return value!.isEmpty ? "Name cannot be empty" : null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Email Field
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: Icon(
                          user!.emailVerified
                              ? Icons.check_circle
                              : Icons.error,
                          color:
                              user!.emailVerified ? Colors.green : Colors.red,
                        ),
                      ),
                      validator: (value) {
                        return value!.isEmpty ? "Email cannot be empty" : null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Phone Field
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        prefixIcon: Icon(Icons.phone,
                            color: Theme.of(context).colorScheme.primary),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: Icon(
                          user!.phoneVerified
                              ? Icons.check_circle
                              : Icons.error,
                          color:
                              user!.phoneVerified ? Colors.green : Colors.red,
                        ),
                      ),
                      validator: (value) {
                        return value!.isEmpty ? "Phone cannot be empty" : null;
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Text(
                'Profile Image',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              const SizedBox(
                height: kXXSmall,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(.1),
                    borderRadius: BorderRadius.circular(kXSmall),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary)),
                child: ListTile(
                  leading: profileImage != null
                      ? CircleAvatar(
                          backgroundImage: FileImage(
                            profileImage!,
                          ),
                          // child: Image.file(profileImage!),
                        )
                      : null,
                  title: const Text("Upload profile picture"),
                  trailing: Icon(
                    profileImage != null
                        ? Icons.check_circle
                        : Icons.arrow_forward,
                    color: profileImage != null
                        ? Colors.green
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Container(
                            padding: const EdgeInsets.all(kMedium),
                            margin: const EdgeInsets.only(
                                bottom: kMedium, left: kMedium, right: kMedium),
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(kSmall)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Pick Photo From?",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error),
                                ),
                                const SizedBox(height: kMedium),
                                ListTile(
                                  leading: const Icon(Icons.camera_alt),
                                  title: const Text('Camera'),
                                  onTap: () async {
                                    final img = await Helpers.uploadImage(
                                        source: ImageSource.camera);
                                    if (img != null) {
                                      setState(() {
                                        profileImage = img;
                                      });
                                    }

                                    context.pop();
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.image),
                                  title: const Text('Gallery'),
                                  onTap: () async {
                                    final img = await Helpers.uploadImage(
                                        source: ImageSource.gallery);

                                    if (img != null) {
                                      setState(() {
                                        profileImage = img;
                                      });
                                    }

                                    context.pop();
                                  },
                                ),
                                SizedBox(
                                  height: AppBar().preferredSize.height / 2,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(height: 30),

              // Save Button
              ElevatedButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      profileImage != null) {
                    // Save profile changes logic
                    UserUpdateData updateData = UserUpdateData(
                        name: _nameController.text,
                        email: _emailController.text,
                        phone: _phoneController.text,
                        profileImage: profileImage);

                    context.read<AuthBloc>().add(
                          ProfileUpdate(updateData),
                        );
                  } else {
                    Helpers.showSnackBar(
                        context,
                        const SnackMessage(
                            tone: SnackTone.error,
                            message: "Fill in the form correctly"));
                  }
                },
                icon: Icon(Icons.save,
                    color: Theme.of(context).colorScheme.onPrimary),
                label: Text(
                  "Save Changes",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
