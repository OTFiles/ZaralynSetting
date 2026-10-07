.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;

    .line 499
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 503
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    .line 504
    .local v2, "count":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 505
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v3
    :cond_2
    return v0
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 189
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 190
    .local v0, "item":Lcom/android/settings/accounts/SyncStateSwitchPreference;
    if-nez v0, :cond_0

    .line 191
    new-instance v7, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v7

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 198
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 199
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 200
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 199
    invoke-virtual {v1, p2, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 201
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_1

    .line 202
    return-void

    .line 204
    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 205
    .local v3, "providerLabel":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    const-string v4, "AccountPreferenceBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 209
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0, p2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 361
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 364
    :cond_0
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 400
    .local p1, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 401
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v0, 0x1

    return v0

    .line 404
    .end local v1
    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private requestAccountAccessIfNeeded(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 322
    return v0

    .line 327
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 328
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 327
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    .line 332
    .local v5, "uid":I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    .line 331
    nop

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 335
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, v3}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, v3}, Landroid/accounts/AccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v2

    .line 338
    .local v2, "intent":Landroid/content/IntentSender;
    if-eqz v2, :cond_1

    .line 340
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v2

    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/accounts/AccountSyncSettings;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 341
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v4, "AccountPreferenceBase"

    const-string v6, "Error requesting account access"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v2
    .end local v3
    :cond_1
    return v0

    .line 329
    .end local v1
    .end local v5
    :catch_1
    move-exception v1

    .line 330
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountPreferenceBase"

    const-string v3, "Invalid sync "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return v0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .line 389
    if-eqz p3, :cond_0

    .line 390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {p1, p2, v1, v0}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 394
    .end local v0
    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 397
    :goto_0
    return-void
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 6
    .param p1, "startSync"    # Z

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 369
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 371
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v3, :cond_0

    .line 372
    goto :goto_1

    .line 374
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 375
    .local v3, "syncPref":Lcom/android/settings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    goto :goto_1

    .line 378
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 369
    .end local v2
    .end local v3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_3

    .line 382
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncAdapterType;

    .line 383
    .local v2, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 384
    .end local v2
    goto :goto_2

    .line 386
    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 7

    .line 161
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 162
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 163
    .local v1, "user":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 164
    .local v3, "isWorkProfile":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 165
    .local v4, "currentTitle":Ljava/lang/CharSequence;
    nop

    .line 166
    if-eqz v3, :cond_1

    .line 167
    const v5, 0x7f120099

    goto :goto_1

    .line 168
    :cond_1
    const v5, 0x7f120066

    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 166
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method private setFeedsState()V
    .locals 26

    .line 420
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 421
    .local v1, "date":Ljava/util/Date;
    iget-object v2, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 422
    .local v2, "userId":I
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v4, 0x0

    .line 426
    .local v4, "syncIsFailing":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 428
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .local v6, "count":I
    :goto_0
    if-ge v5, v6, :cond_10

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 430
    .local v8, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v9, :cond_0

    .line 431
    nop

    .line 428
    move-object/from16 v23, v1

    move-object/from16 v18, v3

    move/from16 v22, v5

    move/from16 v20, v6

    goto/16 :goto_c

    .line 433
    :cond_0
    move-object v9, v8

    check-cast v9, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 435
    .local v9, "syncPref":Lcom/android/settings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v9}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 436
    .local v10, "authority":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v11

    .line 438
    .local v11, "account":Landroid/accounts/Account;
    invoke-static {v11, v10, v2}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v12

    .line 439
    .local v12, "status":Landroid/content/SyncStatusInfo;
    invoke-static {v11, v10, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v13

    .line 441
    .local v13, "syncEnabled":Z
    if-nez v12, :cond_1

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    iget-boolean v14, v12, Landroid/content/SyncStatusInfo;->pending:Z

    .line 442
    .local v14, "authorityIsPending":Z
    :goto_1
    if-nez v12, :cond_2

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    iget-boolean v15, v12, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 444
    .local v15, "initialSync":Z
    :goto_2
    invoke-direct {v0, v3, v11, v10}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 445
    .local v7, "activelySyncing":Z
    const-wide/16 v16, 0x0

    move-object/from16 v18, v3

    .end local v3
    .local v18, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    if-eqz v12, :cond_3

    move/from16 v19, v4

    iget-wide v3, v12, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .end local v4
    .local v19, "syncIsFailing":Z
    cmp-long v3, v3, v16

    if-eqz v3, :cond_4

    .line 447
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    .end local v19
    .restart local v4
    :cond_3
    move/from16 v19, v4

    .end local v4
    .restart local v19
    :cond_4
    const/4 v3, 0x0

    .line 449
    .local v3, "lastSyncFailed":Z
    :goto_3
    if-nez v13, :cond_5

    const/4 v3, 0x0

    .line 450
    :cond_5
    if-eqz v3, :cond_6

    if-nez v7, :cond_6

    if-nez v14, :cond_6

    .line 451
    const/4 v4, 0x1

    .line 453
    .end local v19
    .restart local v4
    move/from16 v19, v4

    .end local v4
    .restart local v19
    :cond_6
    const-string v4, "AccountPreferenceBase"

    move/from16 v20, v6

    const/4 v6, 0x3

    .end local v6
    .local v20, "count":I
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 454
    const-string v4, "AccountPreferenceBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    const-string v8, "Update sync status: "

    .end local v8
    .local v21, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " active = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " pend ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 458
    .end local v21
    .restart local v8
    :cond_7
    move-object/from16 v21, v8

    .end local v8
    .restart local v21
    :goto_4
    if-nez v12, :cond_8

    move/from16 v22, v5

    move-wide/from16 v4, v16

    goto :goto_5

    :cond_8
    move/from16 v22, v5

    iget-wide v4, v12, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 459
    .end local v5
    .local v4, "successEndTime":J
    .local v22, "i":I
    :goto_5
    if-nez v13, :cond_9

    .line 460
    const v6, 0x7f120e4c

    invoke-virtual {v9, v6}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    .line 470
    .end local v1
    .end local v4
    .local v23, "date":Ljava/util/Date;
    .local v24, "successEndTime":J
    :goto_6
    move-object/from16 v23, v1

    move-wide/from16 v24, v4

    const/4 v1, 0x0

    goto :goto_7

    .line 461
    .end local v23
    .end local v24
    .restart local v1
    .restart local v4
    :cond_9
    if-eqz v7, :cond_a

    .line 462
    const v6, 0x7f120e51

    invoke-virtual {v9, v6}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 463
    :cond_a
    cmp-long v6, v4, v16

    if-eqz v6, :cond_b

    .line 464
    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 465
    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "timeString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v23, v1

    .end local v1
    .restart local v23
    move-wide/from16 v24, v4

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    .end local v4
    .restart local v24
    const/4 v1, 0x0

    aput-object v6, v4, v1

    const v5, 0x7f120790

    invoke-virtual {v8, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    .end local v6
    goto :goto_7

    .line 468
    .end local v23
    .end local v24
    .restart local v1
    .restart local v4
    :cond_b
    move-object/from16 v23, v1

    move-wide/from16 v24, v4

    const/4 v1, 0x0

    .end local v1
    .end local v4
    .restart local v23
    .restart local v24
    const-string v4, ""

    invoke-virtual {v9, v4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    :goto_7
    invoke-static {v11, v10, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v4

    .line 472
    .local v4, "syncState":I
    if-eqz v7, :cond_c

    if-ltz v4, :cond_c

    if-nez v15, :cond_c

    const/4 v5, 0x1

    goto :goto_8

    :cond_c
    move v5, v1

    :goto_8
    invoke-virtual {v9, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setActive(Z)V

    .line 474
    if-eqz v14, :cond_d

    if-ltz v4, :cond_d

    if-nez v15, :cond_d

    const/4 v5, 0x1

    goto :goto_9

    :cond_d
    move v5, v1

    :goto_9
    invoke-virtual {v9, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setPending(Z)V

    .line 477
    invoke-virtual {v9, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    .line 478
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 480
    .local v5, "oneTimeSyncMode":Z
    invoke-virtual {v9, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    .line 481
    if-nez v5, :cond_f

    if-eqz v13, :cond_e

    goto :goto_a

    :cond_e
    goto :goto_b

    :cond_f
    :goto_a
    move v1, v6

    :goto_b
    invoke-virtual {v9, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    .line 428
    .end local v3
    .end local v4
    .end local v5
    .end local v7
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v21
    .end local v24
    move/from16 v4, v19

    .end local v19
    .local v4, "syncIsFailing":Z
    :goto_c
    add-int/lit8 v5, v22, 0x1

    .end local v22
    .local v5, "i":I
    move-object/from16 v3, v18

    move/from16 v6, v20

    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 483
    .end local v5
    .end local v18
    .end local v20
    .end local v23
    .restart local v1
    .local v3, "currentSyncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_10
    move-object/from16 v23, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    const/4 v1, 0x0

    .end local v1
    .end local v3
    .end local v4
    .restart local v18
    .restart local v19
    .restart local v23
    iget-object v3, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    if-eqz v19, :cond_11

    goto :goto_d

    :cond_11
    const/16 v7, 0x8

    move v1, v7

    :goto_d
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    return-void
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 353
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 356
    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 11

    .line 513
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 516
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 515
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 517
    .local v0, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v1, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncAdapterType;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v3, :cond_3

    .line 519
    aget-object v5, v0, v2

    .line 521
    .local v5, "sa":Landroid/content/SyncAdapterType;
    iget-object v6, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .end local v5
    goto :goto_1

    .line 522
    .restart local v5
    :cond_0
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 523
    const-string v6, "AccountPreferenceBase"

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    const-string v4, "AccountPreferenceBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAccountSwitches: added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v2
    .end local v3
    :cond_3
    const-string v2, "AccountPreferenceBase"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    const-string v2, "AccountPreferenceBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "looking for sync adapters that match account "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 539
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "m":I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 540
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncAdapterType;

    .line 542
    .local v5, "syncAdapter":Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 543
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 542
    invoke-static {v6, v7, v8}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v6

    .line 544
    .local v6, "syncState":I
    const-string v7, "AccountPreferenceBase"

    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 545
    const-string v7, "AccountPreferenceBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  found authority "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_5
    if-lez v6, :cond_6

    .line 550
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 551
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 550
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 552
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v9, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 553
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 552
    invoke-direct {p0, v8, v9, v10, v7}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 554
    .end local v7
    :catch_0
    move-exception v7

    .line 555
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "AccountPreferenceBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No uid for package"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v5
    .end local v6
    .end local v7
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 559
    .end local v2
    .end local v3
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 560
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 94
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    const/16 v0, 0x24b

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 576
    const v0, 0x7f1206b3

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 89
    const/16 v0, 0x9

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .line 129
    const v0, 0x7f0a0446

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    const v0, 0x7f0a04c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0a0335

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0a0334

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 135
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 488
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 492
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 496
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "arguments":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 143
    const-string v1, "AccountPreferenceBase"

    const-string v2, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 145
    return-void

    .line 147
    :cond_0
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 148
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const-string v1, "AccountPreferenceBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account provided does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 151
    return-void

    .line 153
    :cond_1
    const-string v1, "AccountPreferenceBase"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string v1, "AccountPreferenceBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 255
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 256
    move v0, p1

    .line 257
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 258
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 260
    .local v3, "preference":Landroid/support/v7/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v4, :cond_0

    .line 261
    move-object v4, v3

    check-cast v4, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 262
    .local v4, "syncPref":Lcom/android/settings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getUid()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 263
    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 264
    return-void

    .line 258
    .end local v3
    .end local v4
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v0
    .end local v1
    .end local v2
    :cond_1
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .line 567
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 568
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 106
    const v0, 0x7f15000b

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 111
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "dialog":Landroid/app/Dialog;
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 78
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12035a

    .line 79
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120359

    .line 80
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 215
    nop

    .line 216
    const v0, 0x7f120e54

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    const v2, 0x7f0801a1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 218
    .local v0, "syncNow":Landroid/view/MenuItem;
    nop

    .line 219
    const v2, 0x7f120e53

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    const/4 v3, 0x2

    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 220
    const v2, 0x1080038

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 222
    .local v1, "syncCancel":Landroid/view/MenuItem;
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 224
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 228
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 116
    const/4 v0, 0x0

    const v1, 0x7f0d0028

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a0310

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 119
    .local v2, "prefs_container":Landroid/view/ViewGroup;
    invoke-static {p2, v1, v2, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 120
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "prefs":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 125
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 247
    :pswitch_0    # 0x2
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    .line 248
    return v1

    .line 244
    :pswitch_1    # 0x1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    .line 245
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_0
    instance-of v0, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v0, :cond_6

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 278
    .local v0, "syncPref":Lcom/android/settings/accounts/SyncStateSwitchPreference;
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "authority":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 280
    .local v2, "account":Landroid/accounts/Account;
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 281
    .local v3, "userId":I
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v2, v1, v3}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    .line 285
    .local v5, "syncAutomatically":Z
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 289
    invoke-direct {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 290
    return v7

    .line 292
    :cond_1
    invoke-direct {p0, v2, v1, v7}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v6

    .line 295
    .local v6, "syncOn":Z
    move v8, v5

    .line 296
    .local v8, "oldSyncState":Z
    if-eq v6, v8, :cond_5

    .line 301
    if-eqz v6, :cond_3

    invoke-direct {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 302
    return v7

    .line 305
    :cond_3
    invoke-static {v2, v1, v6, v3}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 309
    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v6, :cond_5

    .line 310
    :cond_4
    invoke-direct {p0, v2, v1, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 314
    .end local v6
    .end local v8
    :cond_5
    :goto_0
    return v7

    .line 316
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_6
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 232
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 235
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 234
    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 236
    .local v0, "syncActive":Z
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 174
    const-string v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->removePreference(Ljava/lang/String;)Z

    .line 175
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 178
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 179
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 413
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 416
    :cond_1
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
