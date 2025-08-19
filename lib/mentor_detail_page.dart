import 'package:flutter/material.dart';
import 'models/mentor.dart';

const TextStyle infoStyle = TextStyle(
  fontFamily: 'Oxygen',
  color: Colors.white,
);

class MentorDetailPage extends StatelessWidget {
  final Mentor mentor;
  const MentorDetailPage({super.key, required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          mentor.imageAsset,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            tooltip: 'Kembali',
                            icon: const Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 12,
                        right: 12,
                        child: FavoriteButton(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          mentor.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Staatliches',
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          mentor.role,
                          textAlign: TextAlign.center,
                          style: infoStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: _InfoPill(
                            icon: Icons.code,
                            label: mentor.skills,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: _InfoPill(
                            icon: Icons.work,
                            label: mentor.experience,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      mentor.about,
                      textAlign: TextAlign.justify,
                      style: infoStyle,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final url = mentor.imageUrls[index];
                        final isNetwork = url.startsWith('http');
                        final img = isNetwork
                            ? Image.network(url, fit: BoxFit.cover, width: 220)
                            : Image.asset(url, fit: BoxFit.cover, width: 220);
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: img,
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(width: 12),
                      itemCount: mentor.imageUrls.length,
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () => _showMentoringDialog(context),
                  icon: const Icon(Icons.calendar_month, color: Colors.white),
                  label: const Text(
                    'Book Mentoring',
                    style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMentoringDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text(
          'Premium Mentoring Session',
          style: TextStyle(
            fontFamily: 'Staatliches',
            color: Colors.white,
          ),
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sesi mentoring premium dengan mentor pilihan.\n'
                  'Harga Rp200.000 / 30 menit.\n\n'
                  'Gunakan kode diskon: mentoring101',
              style: infoStyle,
            ),
            SizedBox(height: 12),
            Text('✅ Knowledge sharing premium', style: infoStyle),
            Text('✅ Networking dengan practitioner', style: infoStyle),
            Text('✅ Problem solving', style: infoStyle),
            Text('✅ Career advice', style: infoStyle),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class _InfoPill extends StatelessWidget {
  final IconData icon;
  final String label;
  const _InfoPill({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.white70),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              label,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Oxygen',
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black54,
      child: IconButton(
        tooltip: _isFavorite ? 'Hapus favorit' : 'Tambah ke favorit',
        onPressed: () => setState(() => _isFavorite = !_isFavorite),
        icon: Icon(
          _isFavorite ? Icons.favorite : Icons.favorite_border,
          color: _isFavorite ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
