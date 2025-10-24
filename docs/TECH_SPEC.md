# PhilosoMind 技術規格文檔

## 1. 系統架構概覽

### 1.1 技術棧
- **前端**: Flutter 3.0+ (Dart)
- **後端**: Firebase (免費層)
- **AI服務**: Hume AI (免費25min/月) + Emotion-LLaMA (開源)
- **資料庫**: Cloud Firestore
- **認證**: Firebase Authentication

### 1.2 核心模組
```
App架構:
├── 認證模組 (Firebase Auth)
├── 情緒日記 (AI情緒分析)
├── 哲學庫 (API + 本地JSON)
├── 冥想中心 (音訊播放器)
├── 成長分析 (圖表視覺化)
└── 使用者設定
```

## 2. 資料庫設計 (Firestore)

### Collections:

**users**
```json
{
  "userId": "string",
  "email": "string",
  "displayName": "string",
  "createdAt": "timestamp",
  "preferences": {
    "philosophyStyle": ["stoicism", "buddhism"],
    "language": "zh-TW"
  }
}
```

**emotion_entries**
```json
{
  "entryId": "string",
  "userId": "string",
  "timestamp": "timestamp",
  "emotionData": {
    "primary": "anxiety",
    "intensity": 7,
    "aiAnalysis": "..."
  },
  "content": "日記內容",
  "recommendedQuotes": ["quote_id_1"]
}
```

**meditation_sessions**
```json
{
  "sessionId": "string",
  "userId": "string",
  "duration": 600,
  "theme": "stoic_breathing",
  "completedAt": "timestamp"
}
```

## 3. API整合

### 3.1 情緒AI (Hume AI)
```dart
// 免費配額: 25分鐘/月
Future<EmotionResult> analyzeEmotion(String text) async {
  final response = await http.post(
    'https://api.hume.ai/v0/batch/jobs',
    headers: {'X-Hume-Api-Key': HUME_API_KEY},
    body: {"text": text}
  );
  return EmotionResult.fromJson(response.data);
}
```

### 3.2 哲學語錄API
```dart
// Philosophy Quotes API (完全免費)
Future<Quote> getPhilosophyQuote(String category) async {
  final url = 'https://philosophy-quotes-api.glitch.me/quotes/philosophy/$category';
  final response = await http.get(url);
  return Quote.fromJson(response.data);
}
```

## 4. Flutter專案結構

```
lib/
├── main.dart
├── app.dart
├── core/
│   ├── constants/
│   ├── themes/
│   └── utils/
├── features/
│   ├── auth/
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── services/
│   ├── journal/
│   ├── meditation/
│   ├── philosophy/
│   └── analytics/
├── shared/
│   ├── models/
│   ├── widgets/
│   └── services/
└── data/
    ├── repositories/
    └── providers/
```

## 5. 免費資源配額管理

### Firebase免費層限制:
- Firestore: 1GB儲存, 50K讀/20K寫 每日
- Authentication: 無限制
- Analytics: 無限制

### 策略:
- 本地快取哲學語錄（減少API調用）
- 批次處理Firestore操作
- AI分析限制在關鍵時刻使用

## 6. 開發階段規劃

### Phase 1: 基礎架構 (Week 1-2)
- ✅ Firebase專案設置
- ✅ GitHub Repository
- ⏳ Flutter專案初始化
- ⏳ 基礎UI框架

### Phase 2: 核心功能 (Week 3-4)
- ⏳ 認證系統
- ⏳ 情緒日記基本功能
- ⏳ 哲學語錄展示

### Phase 3: AI整合 (Week 5-6)
- ⏳ 情緒AI分析
- ⏳ 個性化推薦系統

### Phase 4: 進階功能 (Week 7-8)
- ⏳ 冥想模組
- ⏳ 成長分析圖表
- ⏳ 社群功能（未來）

## 7. 性能優化

- 使用`cached_network_image`快取圖片
- 實施懶加載（Lazy Loading）
- 本地SQLite快取哲學內容
- 壓縮音訊文件

## 8. 安全性

- Firebase Security Rules限制資料存取
- API金鑰使用環境變數
- 用戶數據加密
- HTTPS only

---

**文檔版本**: 1.0  
**最後更新**: 2025-10-24  
**維護者**: @kenfungv
