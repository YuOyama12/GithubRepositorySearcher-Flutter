class StringConsts {
  const StringConsts._();

  // エラー文言
  static const String connectionTimeoutError =
      '通信に失敗しました。通信環境の良いところで再度お試しください。';
  static const String defaultError = 'エラーが発生しました。時間をおいて再度お試しください。';
  static String defaultResponseError(String message, int? statusCode) =>
      '$message (ErrorCode:${statusCode == null ? '-' : statusCode.toString()})';
  static const String authResponseErrorMessage =
      'Personal Access Tokenの認証に失敗しました。再度ログインをお試しください。';

  static const String ok = 'OK';
  static const String cancel = 'キャンセル';
  static const String error = 'エラー';
  static const String confirm = '確認';
  static const String none = '―';
  static const String later = 'あとで';
  static const String login = 'ログイン';
  static const String loginDialogTitle = 'ログインが必要です';
  static const String loginDialogMessage = 'この機能を利用するにはログインが必要です。';
  static const String logout = 'ログアウト';
  static const String logoutConfirmationDialogMessage = 'ログアウトします。本当によろしいですか。';
  static const String searchPageTitle = 'Githubリポジトリ検索';
  static const String searchPlaceholder = 'キーワードを入力';
  static const String search = '検索';
  static const String sortBarHeader = '並び替え：';
  static const String ascOrder = '昇順';
  static const String descOrder = '降順';
  static const String sortedByBestMatch = '関連度順';
  static const String sortedByStarsCount = 'スター数順';
  static const String sortedByUpdatedTime = '更新日順';
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

  static const String myPage = 'マイページ';

  static const String loginDescription =
      '自分のGitHubアカウントで作成したPersonal Access Tokenを入力してください。';
  static const personalAccessToken = 'Personal Access Token';
  static const authSuccessfulMessage = '認証に成功しました';
}
