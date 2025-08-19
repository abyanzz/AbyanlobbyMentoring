import 'package:flutter/material.dart';
import 'models/mentor.dart';
import 'mentor_detail_page.dart';

class MentorListPage extends StatelessWidget {
  const MentorListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Mentor')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return _buildList(context);
          } else if (constraints.maxWidth <= 1000) {
            return _buildGrid(context, 2);
          } else {
            return _buildGrid(context, 4);
          }
        },
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return ListView.separated(
      itemCount: mentorList.length,
      padding: const EdgeInsets.all(12),
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final m = mentorList[index];
        return Card(
          color: const Color(0xFF1E1E1E),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () => _openDetail(context, m),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      m.imageAsset,
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          m.name,
                          style: const TextStyle(
                            fontFamily: 'Staatliches',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          m.role,
                          style: const TextStyle(
                            fontFamily: 'Oxygen',
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '${m.skills} • ${m.experience}',
                          style: const TextStyle(
                            fontFamily: 'Oxygen',
                            color: Colors.white60,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  FilledButton(
                    onPressed: () => _openDetail(context, m),
                    child: const Text('Profil Lengkap'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildGrid(BuildContext context, int crossAxisCount) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 3 / 4,
      ),
      itemCount: mentorList.length,
      itemBuilder: (context, index) {
        final m = mentorList[index];
        return InkWell(
          onTap: () => _openDetail(context, m),
          child: Card(
            color: const Color(0xFF1E1E1E),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(14)),
                    child: Image.asset(
                      m.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        m.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'Staatliches',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        m.role,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'Oxygen',
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(Icons.code, size: 16, color: Colors.white54),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              m.skills,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontFamily: 'Oxygen',
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () => _openDetail(context, m),
                          child: const Text('Profil Lengkap'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _openDetail(BuildContext context, Mentor mentor) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => MentorDetailPage(mentor: mentor)),
    );
  }
}
