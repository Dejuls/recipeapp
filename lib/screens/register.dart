// import 'package:flutter/material.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:provider/provider.dart';
// import 'package:recipeapp/reusables/my_textfield.dart';
// import 'package:recipeapp/services/auth_service.dart';
// import 'package:recipeapp/themes/theme_provider.dart';

// class Register extends StatefulWidget {
//   final void Function()? onTap;
//   const Register({super.key, required this.onTap});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController pswController = TextEditingController();
//   TextEditingController cpswController = TextEditingController();
//   void signUpUser() async {
//     final auth = AuthService();
//     if (pswController.text == cpswController.text) {
//       try {
//         await auth.signUpUserWithEmailAndPassword(
//             emailController.text, pswController.text);
//       } catch (e) {
//         throw Exception(e);
//       }
//     } else {
//       showDialog(
//           context: context,
//           builder: (_) => AlertDialog(
//                 content: Text('passwords don\'t match'),
//               ));
//     }
//   }

//   bool isTapped = false;
//   void isVisible() {
//     setState(() {
//       isTapped = !isTapped;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 60,
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height / 5,
//               width: MediaQuery.of(context).size.width / 1.8,
//               padding: EdgeInsets.all(8),
//               margin: EdgeInsets.only(bottom: 30),
//               decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.secondary,
//                   shape: BoxShape.circle,
//                   //borderRadius: BorderRadius.circular(30),
//                   border: Border.all(
//                       color: Theme.of(context).colorScheme.secondary,
//                       width: 3)),
//               child: Icon(
//                 Icons.fastfood_outlined,
//                 size: 130,
//                 color: Colors.grey[400],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(
//                 'Let\'s create an account for ya!',
//                 style: TextStyle(
//                     fontSize: 23,
//                     color: Colors.grey,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             Form(
//                 child: Column(
//               children: [
//                 MyTextfield(
//                     hintText: 'Enter Email',
//                     controller: emailController,
//                     obscureText: false,
//                     keyboardType: TextInputType.emailAddress, trailing: GestureDetector(
//                       onTap: () =>
//                           Provider.of<ThemeProvider>(context, listen: false)
//                               .switchThemes(),
//                       child: Provider.of<ThemeProvider>(context, listen: false)
//                               .isDark
//                           ? Icon(Icons.light_mode_rounded)
//                           : Icon(Icons.dark_mode_rounded)),),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 MyTextfield(
//                     hintText: 'Enter your password',
//                     controller: pswController,
//                     obscureText: !isTapped,
//                     trailing: IconButton(
//                         onPressed: isVisible,
//                         icon: isTapped
//                             ? Icon(Icons.visibility_outlined)
//                             : Icon(Icons.visibility_off_outlined)),
//                     keyboardType: TextInputType.none),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 MyTextfield(
//                     hintText: 'Confirm password',
//                     controller: cpswController,
//                     obscureText: !isTapped,
//                     keyboardType: TextInputType.none)
//               ],
//             )),
//             SizedBox(
//               height: 20,
//             ),
//             MaterialButton(
//               elevation: 04,
//               padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
//               height: 60,
//               minWidth: MediaQuery.of(context).size.width - 40,
//               color: Theme.of(context).colorScheme.inversePrimary,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               onPressed:signUpUser,
//               child: Text(
//                 'S i g n  U p',
//                 textScaler: TextScaler.linear(1.5),
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Theme.of(context).colorScheme.secondary),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               margin: EdgeInsets.only(bottom: 0),
//               padding: EdgeInsets.all(20),
//               width: MediaQuery.of(context).size.width - 20,
//               decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.secondary,
//                   borderRadius: BorderRadius.circular(25)),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 0, vertical: 14),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Expanded(
//                           child: Divider(
//                             thickness: 2,
//                             color: Theme.of(context).colorScheme.tertiary,
//                           ),
//                         ),
//                         Text(
//                           '\tOr continue with\t',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                         Expanded(
//                           child: Divider(
//                             thickness: 2,
//                             color: Theme.of(context).colorScheme.tertiary,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.symmetric(horizontal: 8),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                           decoration: BoxDecoration(
//                               color: Theme.of(context).colorScheme.secondary,
//                               border: Border.all(
//                                   color: Theme.of(context).colorScheme.tertiary,
//                                   width: 2),
//                               borderRadius: BorderRadius.circular(15)),
//                           child: GestureDetector(
//                             onTap: () => AuthService().signInWiithGoogle,
//                             child: Icon(
//                               LineIcons.googlePlusG,
//                               color: Theme.of(context).colorScheme.tertiary,
//                               size: 53,
//                             ),
//                           ),

//                         ),
//                         SizedBox(
//                           width: 50,
//                         ),
//                         Container(
//                           margin: EdgeInsets.symmetric(horizontal: 8),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                           decoration: BoxDecoration(
//                               color: Theme.of(context).colorScheme.tertiary,
//                               borderRadius: BorderRadius.circular(15)),
//                           child: Icon(
//                             Icons.phone_outlined,
//                             size: 53,
//                             color: Theme.of(context).colorScheme.secondary,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   GestureDetector(
//                     onTap: widget.onTap,
//                     child: Text.rich(TextSpan(children: [
//                       TextSpan(
//                           text: 'Already a Member?',
//                           style: TextStyle(fontSize: 17)),
//                       TextSpan(
//                           text: '\tLogin now',
//                           style: TextStyle(
//                               color: Colors.teal,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold))
//                     ])),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/services/auth_service.dart';
import 'package:recipeapp/themes/theme_provider.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;
  const RegisterScreen({super.key, required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  Future<void> _signUp() async {
    if (!_formKey.currentState!.validate()) return;

    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords don\'t match'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);
    try {
      await AuthService().signUpUserWithEmailAndPassword(
        _emailController.text,
        _passwordController.text,
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                _buildLogo(theme).animate().fadeIn().scale(),
                const SizedBox(height: 40),
                Text(
                  'Let\'s create an account for ya!',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.colorScheme.onBackground.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ).animate().fadeIn().slideY(),
                const SizedBox(height: 40),
                _buildForm(theme).animate().fadeIn().slideY(),
                const SizedBox(height: 20),
                _buildSocialLogin(theme).animate().fadeIn().slideY(),
                const SizedBox(height: 20),
                _buildLoginLink(theme).animate().fadeIn().slideY(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(ThemeData theme) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Icon(
        Icons.fastfood_outlined,
        size: 50,
        color: theme.colorScheme.primary,
      ),
    );
  }

  Widget _buildForm(ThemeData theme) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter Email',
              filled: true,
              fillColor: theme.colorScheme.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.email_outlined),
              suffixIcon: Consumer<ThemeProvider>(
                builder: (context, provider, _) => IconButton(
                  icon: Icon(
                    provider.isDark ? Icons.light_mode : Icons.dark_mode,
                  ),
                  onPressed: provider.switchThemes,
                ),
              ),
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) return 'Please enter your email';
              if (!value!.contains('@')) return 'Please enter a valid email';
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordController,
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              filled: true,
              fillColor: theme.colorScheme.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onPressed: () =>
                    setState(() => _isPasswordVisible = !_isPasswordVisible),
              ),
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) return 'Please enter your password';
              if (value!.length < 6)
                return 'Password must be at least 6 characters';
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _confirmPasswordController,
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Confirm password',
              filled: true,
              fillColor: theme.colorScheme.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(Icons.lock_outline),
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) return 'Please confirm your password';
              if (value != _passwordController.text)
                return 'Passwords don\'t match';
              return null;
            },
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _isLoading ? null : _signUp,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: _isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLogin(ThemeData theme) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: theme.dividerColor)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Or continue with',
                style: theme.textTheme.bodySmall,
              ),
            ),
            Expanded(child: Divider(color: theme.dividerColor)),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialButton(
              icon: LineIcons.googlePlusG,
              kala: theme.colorScheme.tertiary,
              onTap: () => AuthService().signInWiithGoogle(),
              color: theme.colorScheme.secondary,
            ),
            const SizedBox(width: 20),
            _SocialButton(
              icon: Icons.phone_outlined,
              onTap: () {
                // Implement phone sign in
              },
              color: theme.colorScheme.tertiary,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLoginLink(ThemeData theme) {
    return GestureDetector(
      onTap: widget.onTap,
      child: RichText(
        text: TextSpan(
          style: theme.textTheme.bodyLarge,
          children: [
            const TextSpan(text: 'Already a Member? '),
            TextSpan(
              text: 'Login now',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color color;
  Color? kala;
  _SocialButton({
    required this.icon,
    required this.onTap,
    required this.color,
    this.kala,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kala,
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, size: 30, color: color),
      ),
    );
  }
}
