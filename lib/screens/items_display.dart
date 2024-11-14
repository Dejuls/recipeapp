
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  final VoidCallback? onAccept;
  const TermsAndConditionsScreen({Key? key, this.onAccept}) : super(key: key);

  @override
  State<TermsAndConditionsScreen> createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  bool _accepted = false;
  final ScrollController _scrollController = ScrollController();
  bool _reachedBottom = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        _reachedBottom = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Terms & Conditions'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Markdown(
                  controller: _scrollController,
                  selectable: false,
                  data: _termsAndConditions,
                  styleSheet: MarkdownStyleSheet(
                    h1: Theme.of(context).textTheme.headlineSmall,
                    h2: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    p: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.5,
                        ),
                  ),
                  padding: const EdgeInsets.all(16),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _accepted,
                      onChanged: _reachedBottom
                          ? (value) {
                              setState(() {
                                _accepted = value ?? false;
                              });
                            }
                          : null,
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    Expanded(
                      child: Text(
                        'I have read and agree to the Terms and Conditions',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _accepted ? widget.onAccept : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Accept & Continue',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                if (!_reachedBottom) ...[
                  const SizedBox(height: 8),
                  Text(
                    'Please scroll to the bottom to accept',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const _termsAndConditions = '''
# Terms and Conditions

## 1. Introduction
By creating an account on this platform, you agree to abide by these Terms and Conditions. Please read them carefully before proceeding.

## 2. User Responsibilities
- You must provide accurate and up-to-date information during registration.
- You are responsible for maintaining the confidentiality of your account credentials.
- You agree not to engage in any unlawful or harmful activities using the platform.

## 3. Use of Service
- The platform is provided as-is, and we reserve the right to modify, suspend, or discontinue any part of the service at any time.
- Users must not upload harmful content or engage in activities that could disrupt the service.

## 4. Privacy Policy
Your personal data will be collected and used in accordance with our Privacy Policy. By creating an account, you agree to the processing of your data as outlined therein.

## 5. Account Suspension and Termination
- We reserve the right to suspend or terminate your account if you breach these Terms and Conditions.
- You may delete your account at any time by contacting support.

## 6. Changes to Terms
These Terms and Conditions may be updated periodically. Continued use of the platform indicates acceptance of the revised terms.

## 7. Liability
We are not liable for any damages resulting from the use or inability to use the service.

## 8. Intellectual Property
- All content provided through the service is protected by copyright and other intellectual property laws.
- Users retain ownership of their content but grant us a license to use it for service-related purposes.

## 9. Dispute Resolution
Any disputes arising from these terms will be resolved through arbitration in accordance with applicable laws.

## 10. Contact Information
For questions about these terms, please contact our support team.
''';
