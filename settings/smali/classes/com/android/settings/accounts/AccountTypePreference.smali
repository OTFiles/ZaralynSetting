.class public Lcom/android/settings/accounts/AccountTypePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "AccountTypePreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mMetricsCategory:I

.field private final mSummary:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsCategory"    # I
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "titleResPackageName"    # Ljava/lang/String;
    .param p5, "titleResId"    # I
    .param p6, "summary"    # Ljava/lang/CharSequence;
    .param p7, "fragment"    # Ljava/lang/String;
    .param p8, "fragmentArguments"    # Landroid/os/Bundle;
    .param p9, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    .line 79
    iput-object p4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    .line 80
    iput p5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    .line 81
    iput-object p6, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    .line 82
    iput-object p7, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    .line 83
    iput-object p8, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 84
    iput p2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    .line 86
    invoke-static {p3}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountTypePreference;->setKey(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountTypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0, p6}, Lcom/android/settings/accounts/AccountTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0, p9}, Lcom/android/settings/accounts/AccountTypePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountTypePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    return-void
.end method

.method public static buildKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .line 122
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 96
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 99
    .local v0, "userManager":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 100
    .local v1, "user":Landroid/os/UserHandle;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 101
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 100
    invoke-static {v3, v0, v4}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    return v2

    .line 103
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 104
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 103
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    return v2

    .line 107
    :cond_1
    new-instance v3, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 109
    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    .line 110
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    .line 111
    invoke-virtual {v3, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 113
    return v2

    .line 115
    .end local v0
    .end local v1
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
