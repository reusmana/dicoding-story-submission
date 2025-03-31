class NoInternet {
  static String getFriendlyErrorMessage(String error) {
    if (error.contains('SocketException')) {
      return 'Tidak dapat terhubung ke server. Periksa koneksi internet Anda.';
    } else if (error.contains('ClientException')) {
      return 'Terjadi kesalahan saat menghubungi server. Silakan coba lagi nanti.';
    } else {
      return 'Terjadi kesalahan: $error';
    }
  }
}
