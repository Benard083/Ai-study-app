class PremiumService {
  static bool isPremium = false;

  static bool canUse(int usage) {
    if (isPremium) return true;
    return usage < 10;
  }
}
