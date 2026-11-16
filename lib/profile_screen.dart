
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color navy = Color(0xFF142B4A);
  static const Color blue = Color(0xFF3B82F6);
  static const Color background = Color(0xFFF4F7FB);
  static const Color textDark = Color(0xFF1E293B);
  static const Color textGrey = Color(0xFF64748B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: navy,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // =========================
              // PROFILE HEADER
              // =========================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF142B4A),
                      Color(0xFF2563A6),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: navy.withOpacity(0.15),
                      blurRadius: 18,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/waffi.jpeg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      'WAFFI HARIS ASHARI',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.7,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Information Systems Undergraduate',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFDBEAFE),
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text(
                        'Institut Teknologi Sepuluh Nopember',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Divider(
                      color: Colors.white30,
                      height: 1,
                    ),

                    const SizedBox(height: 16),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.white70,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'waffi.haris@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.white70,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Surabaya, East Java, Indonesia',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // =========================
              // PROFESSIONAL SUMMARY
              // =========================
              _sectionTitle(
                'About Me',
                'A brief introduction',
                Icons.person_outline,
              ),

              _whiteCard(
                child: const Text(
                  'Third-year Information Systems undergraduate at Institut Teknologi Sepuluh Nopember (ITS) with a strong interest in Enterprise Architecture, IT Governance, and IT Service Management. Skilled in business process modeling using BPMN, UML diagramming, and structuring business workflows, value streams, and organizational frameworks. Passionate about aligning business processes, information systems, and organizational objectives through structured analysis and process improvement. Also experienced in creative design, visual communication, branding, and digital content development.',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.7,
                    color: textGrey,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              const SizedBox(height: 28),

              // =========================
              // EDUCATION
              // =========================
              _sectionTitle(
                'Education',
                'Academic background',
                Icons.school_outlined,
              ),

              _whiteCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _educationItem(
                      degree: 'Bachelor of Information Systems',
                      institution:
                          'Institut Teknologi Sepuluh Nopember (ITS)',
                      period: '2024 – 2028',
                      detail: 'Current GPA: 3.72 / 4.00',
                      icon: Icons.account_balance,
                      highlight: true,
                    ),

                    const Divider(height: 28),

                    _educationItem(
                      degree: 'Senior High School',
                      institution: 'SMA Negeri 1 Sidoarjo',
                      period: 'Graduated in 2024',
                      detail: 'Sidoarjo, Indonesia',
                      icon: Icons.school,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // =========================
              // EXPERIENCE
              // =========================
              _sectionTitle(
                'Experience',
                'Organizational & professional journey',
                Icons.work_outline,
              ),

              _experienceItem(
                role: 'Design & Branding Expert Staff',
                organization: 'IRIS Robotics ITS',
                period: 'Nov 2024 - Oct 2026',
                color: const Color(0xFF6366F1),
                responsibilities: [
                  'Managed design and branding operations, including Instagram posts, stories, and promotional materials.',
                  'Managed social media content and communications across Instagram and LinkedIn.',
                  'Contributed to improvements in internal information systems and organizational workflows.',
                ],
              ),

              _experienceItem(
                role: 'Creative Content Intern',
                organization: 'Himpunan Mahasiswa Sistem Informasi (HMSI)',
                period: 'Jul 2024 - Dec 2025',
                color: const Color(0xFF0D9488),
                responsibilities: [
                  'Contributed to content production and visual communication initiatives for Information Systems students.',
                  'Collaborated with division members on content planning, organizational communication, and digital media activities.',
                ],
              ),

              _experienceItem(
                role: 'Photography Staff',
                organization: 'ITS Website Internship Program',
                period: 'Jul 2024 - Aug 2026',
                color: const Color(0xFFF59E0B),
                responsibilities: [
                  'Photographed campus buildings and strategic locations across ITS.',
                  'Contributed photography assets for institutional publications and campus documentation.',
                  'Edited photographs for ITS news publications and maintained a reusable campus photo collection.',
                ],
              ),

              const SizedBox(height: 28),

              // =========================
              // TECHNICAL SKILLS
              // =========================
              _sectionTitle(
                'Core Competencies',
                'Areas of knowledge and expertise',
                Icons.psychology_outlined,
              ),

              _skillCategory(
                title: 'Enterprise Architecture',
                icon: Icons.account_tree_outlined,
                color: const Color(0xFF6366F1),
                skills: [
                  'Enterprise Architecture',
                  'TOGAF',
                  'Business Process Modeling',
                  'BPMN',
                  'UML Diagramming',
                ],
              ),

              _skillCategory(
                title: 'IT Governance & Management',
                icon: Icons.settings_suggest_outlined,
                color: const Color(0xFF0D9488),
                skills: [
                  'IT Governance',
                  'IT Service Management',
                  'ITIL 4 Fundamentals',
                ],
              ),

              _skillCategory(
                title: 'Creative & Visual Communication',
                icon: Icons.palette_outlined,
                color: const Color(0xFFF59E0B),
                skills: [
                  'Visual Design',
                  'Content Creation',
                  'Photography',
                  'Photo Editing',
                  'Branding',
                ],
              ),

              const SizedBox(height: 30),

              // =========================
              // FOOTER
              // =========================
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 45,
                      height: 4,
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    const SizedBox(height: 14),

                    const Text(
                      'THANK YOU FOR VISITING',
                      style: TextStyle(
                        color: navy,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1.5,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      'Waffi Haris Ashari • ITS Surabaya',
                      style: TextStyle(
                        color: textGrey,
                        fontSize: 11,
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =========================
  // REUSABLE WIDGETS
  // =========================

  static Widget _sectionTitle(
    String title,
    String subtitle,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: blue.withOpacity(0.10),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: blue,
              size: 22,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: navy,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _whiteCard({
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFE8EDF4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.025),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }

  static Widget _educationItem({
    required String degree,
    required String institution,
    required String period,
    required String detail,
    required IconData icon,
    bool highlight = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: highlight
                ? blue.withOpacity(0.10)
                : const Color(0xFFF1F5F9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: highlight ? blue : textGrey,
            size: 21,
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                degree,
                style: const TextStyle(
                  color: textDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                institution,
                style: const TextStyle(
                  color: textGrey,
                  fontSize: 12,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 12,
                    color: blue,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    period,
                    style: const TextStyle(
                      fontSize: 11,
                      color: textGrey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 7),

              Text(
                detail,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: highlight ? blue : textGrey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget _experienceItem({
    required String role,
    required String organization,
    required String period,
    required Color color,
    required List<String> responsibilities,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: _whiteCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 5,
                  height: 55,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                const SizedBox(width: 13),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        role,
                        style: const TextStyle(
                          color: textDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        organization,
                        style: const TextStyle(
                          color: textGrey,
                          fontSize: 12,
                        ),
                      ),

                      const SizedBox(height: 7),

                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 13,
                            color: color,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            period,
                            style: TextStyle(
                              color: color,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            const Divider(height: 1),

            const SizedBox(height: 14),

            ...responsibilities.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle,
                      color: color,
                      size: 7,
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: textGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _skillCategory({
    required String title,
    required IconData icon,
    required Color color,
    required List<String> skills,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: _whiteCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 21,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: textDark,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Wrap(
              spacing: 8,
              runSpacing: 9,
              children: skills.map((skill) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(
                      color: color.withOpacity(0.15),
                    ),
                  ),
                  child: Text(
                    skill,
                    style: TextStyle(
                      color: color,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
