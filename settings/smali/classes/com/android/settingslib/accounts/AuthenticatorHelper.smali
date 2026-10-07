.class public final Lcom/android/settingslib/accounts/AuthenticatorHelper;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
    }
.end annotation


# instance fields
.field private final mAccTypeIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEnabledAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

.field private mListeningToAccountUpdates:Z

.field private final mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "listener"    # Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 67
    iput-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 69
    iput-object p3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListener:Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 73
    return-void
.end method

.method private buildAccountTypeToAuthoritiesMap()V
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 254
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 253
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 255
    .local v0, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 256
    aget-object v3, v0, v1

    .line 257
    .local v3, "sa":Landroid/content/SyncAdapterType;
    iget-object v4, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 258
    .local v4, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 260
    iget-object v5, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    const-string v5, "AuthenticatorHelper"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    const-string v5, "AuthenticatorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v3
    .end local v4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1
    .end local v2
    :cond_2
    return-void
.end method


# virtual methods
.method public containsAccountType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    monitor-exit v1

    return-object v2

    .line 101
    :cond_0
    monitor-exit v1

    .line 102
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 105
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 107
    .local v2, "authContext":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 108
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 107
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 109
    iget-object v3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 110
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v3

    .line 114
    .end local v1
    .end local v2
    goto :goto_0

    .line 111
    .restart local v1
    .restart local v2
    :catchall_0
    move-exception v4

    monitor-exit v3

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4

    .line 112
    .end local v1
    .end local v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    .line 116
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    :cond_2
    return-object v0

    .line 101
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public getEnabledAccountTypes()[Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "label":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 132
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 134
    .local v2, "authContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 139
    .end local v1
    .end local v2
    :goto_0
    goto :goto_1

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "AuthenticatorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No label icon for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_1

    .line 135
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AuthenticatorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No label name for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_0

    .line 141
    :cond_0
    :goto_1
    return-object v0
.end method

.method public getLabelIdForType(Ljava/lang/String;)I
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 166
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    iget v1, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    return v1

    .line 168
    .end local v0
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 152
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v1, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    return-object v1

    .line 154
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public listenToAccountUpdates()V
    .locals 7

    .line 229
    iget-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    .line 238
    .end local v0
    :cond_0
    return-void
.end method

.method onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 203
    if-nez p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 209
    aget-object v1, p1, v0

    .line 210
    .local v1, "account":Landroid/accounts/Account;
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->buildAccountTypeToAuthoritiesMap()V

    .line 215
    iget-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListener:Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 218
    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 224
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 225
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-virtual {p0, v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 226
    return-void
.end method

.method public preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;-><init>(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method public stopListeningToAccountUpdates()V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    .line 245
    :cond_0
    return-void
.end method

.method public updateAuthDescriptions(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 177
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 178
    .local v0, "authDescs":[Landroid/accounts/AuthenticatorDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1
    :cond_0
    return-void
.end method
