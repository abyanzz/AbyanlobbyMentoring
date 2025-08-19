class Mentor {
  final String name;
  final String role;
  final String skills;
  final String experience;
  final String about;
  final String imageAsset;
  final List<String> imageUrls;

  const Mentor({
    required this.name,
    required this.role,
    required this.skills,
    required this.experience,
    required this.about,
    required this.imageAsset,
    required this.imageUrls,
  });
}

const List<Mentor> mentorList = [
  // ==== Data lama ====
  Mentor(
    name: 'Alvin Indra Pratama',
    role: 'Frontend Developer at Antikode',
    skills: 'Front-End Web, Project Management',
    experience: '4 Tahun pengalaman di industri',
    about:
    'Saya adalah seorang Frontend Developer yang bekerja di Antikode (Agency UI/UX). '
    'Menguasai React.js, Vue.js, Nuxt.js, Next.js, Tailwind CSS, GraphQL, SEO, dlsb. '
    'Berpengalaman mentoring di Bangkit dan Kampus Merdeka.',
    imageAsset: 'images/Alvin-Indra.jpg',
    imageUrls: [
      'https://essensi.co/wp-content/uploads/2025/08/s.jpg',      'https://assets.cdn.dicoding.com/original/commons/teams-narenda-wicaksono.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-dimas-catur.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-rizqy-hidayat.png',
    ],
  ),
  Mentor(
    name: 'Ivan Aulia Rahman',
    role: 'Back-End Developer at Starva',
    skills: 'Back-End, Project Management',
    experience: '2 Tahun pengalaman di industri',
    about:
    'Saya adalah seorang Back-End Developer yang telah berpengalaman selama hampir 2 tahun'
    'dimana saya menguasai Golang, Node.js, Database, Cache, Queue, yang mendukung saya dalam mengembangkan suatu proyek.'
    'Disamping itu, saya juga memiliki pengalaman leading beberapa project management menggunakan GitHub, Jira, Notion.',
    imageAsset: 'images/Ivan-Aulia-Rahman.png',
    imageUrls: [
      'https://essensi.co/wp-content/uploads/2025/08/s.jpg','https://assets.cdn.dicoding.com/original/commons/teams-narenda-wicaksono.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-dimas-catur.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-rizqy-hidayat.png',
    ],
  ),
  Mentor(
    name: 'Aditya Rohman',
    role: 'Flutter Developer at Koltiva',
    skills: 'Flutter',
    experience: '3 Tahun pengalaman di industri',
    about:
    'Saya memiliki 3 tahun lebih pengalaman membangun aplikasi mobile.'
    'Memahami berbagai development tools dan framework untuk pengembangan aplikasi mobile seperti Android dengan Java/Kotlin, iOS dengan Swift, dan Flutter dengan Dart'
    'Disamping memiliki keahlian dalam bidang pengembangan aplikasi mobile, saya juga memiliki pemahaman yang baik terkait best-practices dalam software engineering secara umum seperti menulis kode yang bersih dan mudah dipelihara',
    imageAsset: 'images/Aditya-Rohman.png',
    imageUrls: [
      'https://essensi.co/wp-content/uploads/2025/08/s.jpg','https://assets.cdn.dicoding.com/original/commons/teams-narenda-wicaksono.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-dimas-catur.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-rizqy-hidayat.png',
    ],
  ),

  Mentor(
    name: 'Bervianto Leo Pratama',
    role: 'Software Engineer at Mitrais',
    skills: 'Back-End, Cloud',
    experience: '5+ Tahun pengalaman di industri',
    about:
    'Saya adalah seorang Software Engineer di Mitrais. Saya telah bekerja sebagai Software Engineer selama 3 tahun dan sebagai Backend Developer selama 3 tahun. '
     'Saya menguasai beberapa teknologi seperti C#, JavaScript, TypeScript, Node.js, dan lainnya. Saya bisa membantu peserta untuk konsultasi tentang karier, teknologi yang terkait, serta beberapa topik seperti Cloud, DevOps, dan Cyber Security.',
    imageAsset: 'images/Bervianto-Leo-Pratama.png',
    imageUrls: [
      'https://essensi.co/wp-content/uploads/2025/08/s.jpg',
      'https://assets.cdn.dicoding.com/original/commons/teams-narenda-wicaksono.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-dimas-catur.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-rizqy-hidayat.png',
    ],
  ),

  Mentor(
    name: 'Arik Achmad',
    role: 'Head of Mobile at Radyalabs',
    skills: 'Android Native, Flutter, iOS, Project Management',
    experience: '5+ Tahun pengalaman di industri',
    about:
    'Saya sangat antusias dengan perkembangan teknologi khususnya Mobile App Development. Lebih dari 5 tahun saya bekerja sebagai Mobile Developer), '
        'Mulai dari Android Developer hingga menjadi Mobile Developer multiplatform, saya mendapatkan banyak pengalaman dari berbagai bahasa, seperti Java, Kotlin, Objective-C, Swift, dan Dart. Dengan berbekal pengalaman ini, saya berharap dapat membantu teman-teman yang akan berkarier di dunia mobile development dan mengikuti tren yang dibutuhkan industri saat ini..',
    imageAsset: 'images/Arik-Achmad.png',
    imageUrls: [
      'https://essensi.co/wp-content/uploads/2025/08/s.jpg',      'https://assets.cdn.dicoding.com/original/commons/teams-narenda-wicaksono.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-dimas-catur.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-rizqy-hidayat.png',
    ],
  ),

  Mentor(
    name: 'Chairul Amri',
    role: 'Mobile Developer at EBCO (PT.EBConnection Indonesia)',
    skills: 'Android Native, IoT',
    experience: '5 Tahun pengalaman di industri',
    about:
    'Saya adalah seorang Mobile Developer di salah salah satu perusahaan IT di wilayah Jakarta Selatan. Saya telah bekerja sebagai software developer lebih dari 5 tahun. '
        'Saya menguasai beberapa teknologi seperti Java, Kotlin, C, C++, Microcontroller, Sensor, Aktuator, IoT. Saya juga memiliki pengalaman sebagai Dosen Praktisi pada program Praktisi Mengajar pada Periode 2 di tahun 2023 dengan mengampu matakuliah teknik digital dan pengalaman mengajar lain nya dibidang Akademik. Saya juga tergabung pada tim Discussion Squad yang berkontribusi pada learning path Android. Saya juga cukup aktif pada forum teknologi di beberapa server discord, seperti Server Discord WPU(Web Programming Unpas) sebagai Helper Java-Kotlin, pada Server Discord Kelas Terbuka sebagai Tenaga Pendidik. Saya bisa membantu peserta untuk konsultasi tentang karier, masalah teknologi, atau yang lainnya.',
    imageAsset: 'images/Chairul-Amri.png',
    imageUrls: [
      'https://essensi.co/wp-content/uploads/2025/08/s.jpg',      'https://assets.cdn.dicoding.com/original/commons/teams-narenda-wicaksono.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-dimas-catur.png',
      'https://assets.cdn.dicoding.com/original/commons/teams-rizqy-hidayat.png',
    ],
  ),
];
