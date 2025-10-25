class StringConsts {
  // エラー文言
  static const String connectionTimeoutError =
      '通信に失敗しました。通信環境の良いところで再度お試しください。';
  static const String defaultError = 'エラーが発生しました。時間をおいて再度お試しください。';

  static const String ok = 'OK';
  static const String cancel = 'キャンセル';
  static const String error = 'エラー';
  static const String searchPageTitle = 'Githubリポジトリ検索';
  static const String searchPlaceholder = 'キーワードを入力';
  static const String search = '検索';
  static const String noRepositoryResult = 'なし';
  static String queryTextResult(String? queryText) {
    return '検索：${(queryText ?? '-')}';
  }

  static String queryResultCount(int? resultCount) {
    return '検索結果：${(resultCount ?? '-')}件';
  }

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
