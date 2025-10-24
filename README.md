# PhilosoMind 🧘‍♂️💭

> AI-powered emotion management app integrating Chinese & Western philosophy with meditation, journaling, and personalized guidance.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![Firebase](https://img.shields.io/badge/Firebase-Free-FFCA28?logo=firebase)](https://firebase.google.com/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 🌟 Project Vision

PhilosoMind is a revolutionary mental wellness app that combines:
- **AI-powered emotion detection** - Analyzes user mood through text, voice, and facial expressions
- **Eastern & Western philosophy** - Integrates teachings from Stoicism, Buddhism, Taoism, Confucianism, and Existentialism
- **Personalized guidance** - Adaptive recommendations based on emotional state and personal growth journey
- **Meditation & Mindfulness** - Guided sessions with philosophical insights
- **Growth tracking** - AI-generated journals and emotional progress analytics

## 🏗️ Tech Stack (100% Free Tier)

### Frontend
- **Flutter 3.0+** - Cross-platform mobile framework (iOS/Android)
- **Dart** - Programming language

### Backend & Services
- **Firebase Authentication** - User authentication (Free tier)
- **Cloud Firestore** - NoSQL database for user data (Free tier)
- **Firebase Analytics** - User behavior tracking (Free tier)

### AI & APIs (Free Tier Options)
- **Hume AI** - Emotion recognition (25 min/month free)
- **Emotion-LLaMA** - Open-source multimodal emotion AI
- **Philosophy Quotes API** - Free quotes database
- **Zen Quotes API** - Meditation & wisdom quotes

### Design & Documentation
- **Figma** - UI/UX design (Free tier)
- **Draw.io** - Architecture diagrams (Free)

## 📱 Core Features

### 1. Emotion Journal 📔
- Voice, text, or facial input for mood tracking
- AI analyzes emotional state
- Recommends relevant philosophical quotes
- Auto-generates reflection prompts

### 2. Philosophy Library 📚
- Curated quotes from Eastern & Western traditions
- Daily philosophical reflections
- Context-aware recommendations
- Categories: Stoicism, Buddhism, Taoism, Confucianism, Existentialism

### 3. Meditation Center 🧘
- Guided meditations with philosophical themes
- Breathing exercises
- Mindfulness practices
- Progress tracking

### 4. Growth Analytics 📊
- Emotional trend visualization
- AI-generated insights
- Weekly/monthly reports
- Personal growth milestones

### 5. Community (Future) 🤝
- Anonymous philosophical discussions
- Shared wisdom
- Support network

## 🎨 UI/UX Design Principles

- **Minimalist Zen aesthetic** - Clean, calming interface
- **East-meets-West** - Blend of traditional and modern design
- **Accessibility** - Support for dark mode, text scaling
- **Smooth animations** - Mindful transitions

## 📂 Project Structure

```
philosomind-app/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── journal_screen.dart
│   │   ├── meditation_screen.dart
│   │   ├── philosophy_screen.dart
│   │   └── analytics_screen.dart
│   ├── services/
│   │   ├── auth_service.dart
│   │   ├── emotion_ai_service.dart
│   │   ├── firestore_service.dart
│   │   └── philosophy_api_service.dart
│   ├── models/
│   │   ├── user_model.dart
│   │   ├── emotion_entry.dart
│   │   └── philosophy_quote.dart
│   └── widgets/
│       ├── emotion_detector.dart
│       ├── quote_card.dart
│       └── meditation_player.dart
├── assets/
│   ├── images/
│   ├── audio/
│   └── data/
│       └── philosophy_quotes.json
└── test/
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.0+
- Firebase account (free tier)
- Android Studio / VS Code

### Installation

```bash
# Clone the repository
git clone https://github.com/kenfungv/philosomind-app.git
cd philosomind-app

# Install dependencies
flutter pub get

# Configure Firebase
# Follow: https://firebase.google.com/docs/flutter/setup

# Run the app
flutter run
```

## 🔧 Configuration

### Firebase Setup
1. Create project at [Firebase Console](https://console.firebase.google.com/)
2. Add Android/iOS apps
3. Download `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
4. Enable Authentication (Email/Password, Google)
5. Create Firestore database

### API Keys (Free Tier)
Create `.env` file:
```
HUME_AI_KEY=your_free_api_key
PHILOSOPHY_API_URL=https://philosophy-quotes-api.glitch.me
```

## 📚 Philosophy Content Sources

- **Stoicism**: Marcus Aurelius, Seneca, Epictetus
- **Buddhism**: Buddha, Thich Nhat Hanh, Dalai Lama
- **Taoism**: Laozi, Zhuangzi
- **Confucianism**: Confucius, Mencius
- **Existentialism**: Sartre, Camus, Nietzsche
- **Modern Psychology**: Carl Jung, Viktor Frankl

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Free API providers (Hume AI, Philosophy Quotes API, Zen Quotes)
- Firebase for free backend services
- Flutter community
- Open-source emotion AI projects

## 📞 Contact

Project Link: [https://github.com/kenfungv/philosomind-app](https://github.com/kenfungv/philosomind-app)

---

**Built with 💙 using 100% free tools and services**
