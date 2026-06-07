import 'package:flutter/material.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  bool agreePrivacy = true;
  bool agreeVoice = true;
  bool agreeLanguage = true;
  bool agreeAge = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg222.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            child: Column(
              children: [
                // Logo
                SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset(
                    "assets/images/round.jpg",
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "YOU HAVE FREEDOM TO POST\nA PRIVATE VIDEO CHAT GLOBALLY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  "PLEASE SAVE TO PHONE HOME SCREEN AND\nALWAYS RE-CHECK YOUR ACCOUNT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                  ),
                ),

                const SizedBox(height: 15),

                // Video Preview
                Container(
                  width: 190,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff6F2CFF),
                        Color(0xff2936FF),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 95,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/person.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // Voice Message Card
                _buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.mic,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Wel Come Voice Message",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          16,
                          (index) => Container(
                            width: 3,
                            height: (index % 5 + 1) * 6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // Rules
                _buildCard(
                  child: Column(
                    children: const [
                      Text(
                        "Rules To Forum",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 15),
                      RuleText(
                        "1. Send free voice message but meet your post meets first",
                      ),
                      RuleText(
                        "2. Long term post, picture and video meet relations application",
                      ),
                      RuleText(
                        "3. Private personal video only, no picture nudity",
                      ),
                      RuleText(
                        "4. Respect the opposite user.",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // Agreements
                _buildCard(
                  child: Column(
                    children: [
                      _checkTile(
                        "I agree with privacy policy and the customer service terms and condition",
                        agreePrivacy,
                        (v) => setState(
                          () => agreePrivacy = v!,
                        ),
                      ),
                      _checkTile(
                        "I agree to abide by forum respect values",
                        agreeVoice,
                        (v) => setState(
                          () => agreeVoice = v!,
                        ),
                      ),
                      _checkTile(
                        "I agree I will always use correct appropriate language",
                        agreeLanguage,
                        (v) => setState(
                          () => agreeLanguage = v!,
                        ),
                      ),
                      _checkTile(
                        "I agree that I am 18+ years old",
                        agreeAge,
                        (v) => setState(
                          () => agreeAge = v!,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "CREATE /SAVE YOUR ACCOUNT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                _inputField(
                  Icons.phone,
                  "Phone number",
                ),

                const SizedBox(height: 10),

                _inputField(
                  Icons.person,
                  "User name-User number",
                ),

                const SizedBox(height: 10),

                _inputField(
                  Icons.calendar_month,
                  "Date of Birth",
                ),

                const SizedBox(height: 10),

                _inputField(
                  Icons.lock,
                  "Enter PIN",
                ),

                const SizedBox(height: 18),

                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xff7D2EFF),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "SEND OTP",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    5,
                    (index) => Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xff6F2CFF),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "I AGREE & SAVE ACCOUNT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "*Pressing this will save your account information.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }

  Widget _inputField(
    IconData icon,
    String hint,
  ) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(icon),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Widget _checkTile(
    String title,
    bool value,
    Function(bool?) onChanged,
  ) {
    return CheckboxListTile(
      value: value,
      activeColor: Colors.white,
      checkColor: Colors.black,
      contentPadding: EdgeInsets.zero,
      controlAffinity:
          ListTileControlAffinity.leading,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }
}

class RuleText extends StatelessWidget {
  final String text;

  const RuleText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}