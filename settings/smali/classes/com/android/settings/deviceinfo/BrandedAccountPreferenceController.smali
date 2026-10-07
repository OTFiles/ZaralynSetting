.class public Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BrandedAccountPreferenceController.java"


# static fields
.field private static final KEY_PREFERENCE_TITLE:Ljava/lang/String; = "branded_account"


# instance fields
.field private final mAccounts:[Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const-string v0, "branded_account"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object v0

    .line 41
    .local v0, "accountFeatureProvider":Lcom/android/settings/accounts/AccountFeatureProvider;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/accounts/AccountFeatureProvider;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    .line 42
    return-void
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "accountFeatureProvider"    # Lcom/android/settings/accounts/AccountFeatureProvider;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    const-string v1, "user_handle"

    .line 69
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    const-string v1, "account_type"

    .line 71
    invoke-interface {p1}, Lcom/android/settings/accounts/AccountFeatureProvider;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 75
    const v2, 0x7f1200a8

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 77
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 79
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object v0

    .line 57
    .local v0, "accountFeatureProvider":Lcom/android/settings/accounts/AccountFeatureProvider;
    const-string v1, "branded_account"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 58
    .local v1, "accountPreference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 60
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;-><init>(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    const/4 v0, 0x3

    return v0
.end method
