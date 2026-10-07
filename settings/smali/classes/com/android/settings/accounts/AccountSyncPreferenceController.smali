.class public Lcom/android/settings/accounts/AccountSyncPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountSyncPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 84
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "account_sync"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 59
    const-string v0, "account_sync"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/16 v2, 0x8

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1200a8

    .line 69
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 72
    const/4 v1, 0x1

    return v1
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 97
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 98
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 99
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 93
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 94
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 89
    return-void
.end method

.method updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 107
    .local v0, "userId":I
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 108
    .local v1, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v2, 0x0

    .line 109
    .local v2, "total":I
    const/4 v3, 0x0

    .line 110
    .local v3, "enabled":I
    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 111
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v1

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 112
    aget-object v7, v1, v5

    .line 113
    .local v7, "sa":Landroid/content/SyncAdapterType;
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-nez v8, :cond_1

    .line 114
    goto :goto_1

    .line 116
    :cond_1
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 117
    invoke-static {v8, v9, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v8

    .line 118
    .local v8, "syncState":I
    if-lez v8, :cond_3

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v10, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    .line 122
    .local v9, "syncEnabled":Z
    nop

    .line 123
    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v10

    xor-int/2addr v10, v4

    .line 124
    .local v10, "oneTimeSyncMode":Z
    if-nez v10, :cond_2

    if-eqz v9, :cond_3

    .line 125
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 111
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    .end local v5
    .end local v6
    :cond_4
    if-nez v3, :cond_5

    .line 131
    const v4, 0x7f1200a5

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 132
    :cond_5
    if-ne v3, v2, :cond_6

    .line 133
    const v4, 0x7f1200a6

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 135
    :cond_6
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1200a7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :goto_2
    return-void
.end method
