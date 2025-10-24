lib/main_zen_ink.dartimport 'package:flutter/material.dart';

void main() {
  runApp(const PhilosoMindApp());
}

class PhilosoMindApp extends StatelessWidget {
  const PhilosoMindApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhilosoMind',
      debugShowCheckedModeBanner: false,
      theme: ZenTheme.theme,
      home: const MainScreen(),
    );
  }
}

// 墨色禪意主題設計
class ZenTheme {
  // 墨色色彩系統
  static const Color deepInk = Color(0xFF2C3E50);      // 深墨
  static const Color mediumInk = Color(0xFF34495E);    // 中墨
  static const Color lightInk = Color(0xFF95A5A6);     // 淡墨
  static const Color paperWhite = Color(0xFFFAFAFA);   // 宣紙白
  static const Color oldPaper = Color(0xFFECF0F1);     // 舊紙黃
  static const Color inkAccent = Color(0xFF7F8C8D);    // 墨灰
  
  static ThemeData get theme {
    return ThemeData(
      primaryColor: deepInk,
      scaffoldBackgroundColor: paperWhite,
      colorScheme: ColorScheme.light(
        primary: deepInk,
        secondary: mediumInk,
        surface: paperWhite,
        onPrimary: paperWhite,
        onSecondary: paperWhite,
        onSurface: deepInk,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: paperWhite,
        elevation: 0,
        iconTheme: IconThemeData(color: deepInk),
        titleTextStyle: TextStyle(
          color: deepInk,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: paperWhite,
        selectedItemColor: deepInk,
        unselectedItemColor: lightInk,
        elevation: 8,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(color: deepInk, fontSize: 32, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: mediumInk, fontSize: 16),
        bodyMedium: TextStyle(color: inkAccent, fontSize: 14),
      ),
    );
  }
}

// 主畫面導航
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const JournalScreen(),
    const PhilosophyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '心境',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            activeIcon: Icon(Icons.book),
            label: '筆記',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            activeIcon: Icon(Icons.menu_book),
            label: '哲思',
          ),
        ],
      ),
    );
  }
}

// 首頁 - 情緒追蹤
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('心境'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 今日公案 (每日哲思)
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: ZenTheme.oldPaper,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ZenTheme.lightInk.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '今日公案',
                    style: TextStyle(
                      color: ZenTheme.deepInk,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '「知者不言，言者不知。」',
                    style: TextStyle(
                      color: ZenTheme.deepInk,
                      fontSize: 18,
                      height: 1.6,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '— 道德經 第五十六章',
                    style: TextStyle(
                      color: ZenTheme.inkAccent,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // 情緒追蹤
            Text(
              '此刻心境',
              style: TextStyle(
                color: ZenTheme.deepInk,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                _buildEmotionTile('😌', '平靜'),
                _buildEmotionTile('😊', '喜悅'),
                _buildEmotionTile('😢', '悲傷'),
                _buildEmotionTile('😠', '憤怒'),
                _buildEmotionTile('😰', '焦慮'),
                _buildEmotionTile('😔', '困惑'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmotionTile(String emoji, String label) {
    return Container(
      decoration: BoxDecoration(
        color: ZenTheme.paperWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ZenTheme.lightInk.withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: ZenTheme.mediumInk,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

// 筆記頁面
class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('心緒筆記'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: ZenTheme.oldPaper,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: ZenTheme.lightInk.withOpacity(0.3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2025年1月${15 - index}日',
                      style: TextStyle(
                        color: ZenTheme.inkAccent,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '😌 平靜',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  '今天感受到內心的平靜，如同湖面的倒影...',
                  style: TextStyle(
                    color: ZenTheme.deepInk,
                    fontSize: 15,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// 哲思典籍頁面
class PhilosophyScreen extends StatelessWidget {
  const PhilosophyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('哲思典籍'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildPhilosophyCard(
            '道家',
            '無為而無不為',
            '道可道，非常道；名可名，非常名。',
          ),
          _buildPhilosophyCard(
            '佛學',
            '一切有為法，如夢幻泡影',
            '色即是空，空即是色。',
          ),
          _buildPhilosophyCard(
            '儒家',
            '修身齊家治國平天下',
            '己所不欲，勿施於人。',
          ),
          _buildPhilosophyCard(
            '斯多葛',
            '控制你能控制的',
            '接受你不能改變的，改變你能改變的。',
          ),
        ],
      ),
    );
  }

  Widget _buildPhilosophyCard(String title, String subtitle, String quote) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ZenTheme.oldPaper,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ZenTheme.lightInk.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: ZenTheme.deepInk,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              color: ZenTheme.mediumInk,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            quote,
            style: TextStyle(
              color: ZenTheme.inkAccent,
              fontSize: 13,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
