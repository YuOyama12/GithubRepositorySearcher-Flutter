class StringConsts {
  static const String searchPageTitle = 'Githubリポジトリ検索';
  static const String searchPlaceholder = 'キーワードを入力';
  static const String search = '検索';
  static const String noRepositoryResult = 'なし';
  static String usedLanguage(String? language) {
    return '使用言語：${language ?? '-'}';
  }

  static const String loadPreventionErrorMessage = 'このページを表示することはできません';
  static String followingCount(int? count) {
    return 'フォロー数：${count ?? '0'}';
  }

  static String followersCount(int? count) {
    return 'フォロワー数：${count ?? '0'}';
  }

  static String createdRepositoryList = '作成したリポジトリ一覧';
}
