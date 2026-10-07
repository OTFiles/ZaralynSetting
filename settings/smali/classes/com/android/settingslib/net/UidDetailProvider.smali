.class public Lcom/android/settingslib/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 67
    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 1
    .param p0, "userHandle"    # I

    .line 53
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method private buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;
    .locals 17
    .param p1, "uid"    # I

    move-object/from16 v1, p0

    .line 105
    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v0, v1, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 108
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {v0}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    move-object v5, v0

    .line 109
    .local v5, "detail":Lcom/android/settingslib/net/UidDetail;
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 113
    const/16 v0, 0x3e8

    if-eq v2, v0, :cond_9

    packed-switch v2, :pswitch_data_0

    .line 132
    iget-object v0, v1, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UserManager;

    .line 135
    .local v6, "um":Landroid/os/UserManager;
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v0

    .line 137
    .local v0, "userHandle":I
    invoke-virtual {v6, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 138
    .local v7, "info":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_0

    .line 139
    iget-object v8, v1, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 140
    iget-object v8, v1, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 141
    return-object v5

    .line 146
    .end local v0
    .end local v7
    :cond_0
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "packageNames":[Ljava/lang/String;
    const/4 v0, 0x0

    if-eqz v7, :cond_1

    array-length v8, v7

    goto :goto_0

    :cond_1
    move v8, v0

    .line 149
    .local v8, "length":I
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 150
    .local v9, "userId":I
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 151
    .local v10, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 152
    .local v11, "ipm":Landroid/content/pm/IPackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v12, 0x1

    if-ne v8, v12, :cond_3

    .line 153
    :try_start_1
    aget-object v12, v7, v0

    invoke-interface {v11, v12, v0, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 155
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v12, v13}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 160
    .end local v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    nop

    .line 181
    move-object/from16 v16, v7

    goto :goto_3

    .line 184
    .end local v9
    .end local v10
    .end local v11
    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_4

    .line 182
    :catch_1
    move-exception v0

    move-object/from16 v16, v7

    goto/16 :goto_5

    .line 160
    .restart local v9
    .restart local v10
    .restart local v11
    :cond_3
    if-le v8, v12, :cond_6

    .line 161
    :try_start_2
    new-array v12, v8, [Ljava/lang/CharSequence;

    iput-object v12, v5, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 162
    new-array v12, v8, [Ljava/lang/CharSequence;

    iput-object v12, v5, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    .line 163
    move v12, v0

    .local v12, "i":I
    :goto_1
    if-ge v12, v8, :cond_6

    .line 164
    aget-object v13, v7, v12

    .line 165
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 166
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-interface {v11, v13, v0, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 169
    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v15, :cond_4

    .line 170
    iget-object v0, v5, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v16, v7

    :try_start_3
    invoke-virtual {v15, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7
    .local v16, "packageNames":[Ljava/lang/String;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v12

    .line 171
    iget-object v0, v5, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    iget-object v7, v5, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    aget-object v7, v7, v12

    invoke-virtual {v6, v7, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v0, v12

    .line 173
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v0, :cond_5

    .line 174
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v7, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v13, v0, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {v15, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .end local v13
    .end local v14
    .end local v15
    goto :goto_2

    .line 163
    .end local v16
    .restart local v7
    :cond_4
    move-object/from16 v16, v7

    .end local v7
    .restart local v16
    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    const/4 v0, 0x0

    goto :goto_1

    .line 181
    .end local v12
    .end local v16
    .restart local v7
    :cond_6
    move-object/from16 v16, v7

    .end local v7
    .restart local v16
    :goto_3
    iget-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v0, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    .end local v9
    .end local v10
    .end local v11
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 184
    :catch_2
    move-exception v0

    goto :goto_4

    .line 182
    :catch_3
    move-exception v0

    goto :goto_5

    .line 184
    .end local v16
    .restart local v7
    :catch_4
    move-exception v0

    move-object/from16 v16, v7

    .line 185
    .end local v7
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16
    :goto_4
    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while building UI detail for uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_7

    .line 182
    .end local v16
    .restart local v7
    :catch_5
    move-exception v0

    move-object/from16 v16, v7

    .line 183
    .end local v7
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16
    :goto_5
    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while building UI detail for uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0
    :goto_6
    nop

    .line 188
    :goto_7
    iget-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 192
    :cond_7
    return-object v5

    .line 119
    .end local v6
    .end local v8
    .end local v16
    :pswitch_0    # -0x4
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps_users:I

    goto :goto_8

    .line 121
    :cond_8
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps:I

    .line 119
    :goto_8
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 122
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 123
    return-object v5

    .line 125
    :pswitch_1    # -0x5
    iget-object v0, v1, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 129
    return-object v5

    .line 115
    .end local v0
    :cond_9
    sget v0, Lcom/android/settingslib/R$string;->process_kernel_label:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 117
    return-object v5

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1    # -0x5
        :pswitch_0    # -0x4
    .end packed-switch
.end method

.method public static getUserIdForKey(I)I
    .locals 1
    .param p0, "key"    # I

    .line 61
    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method public static isKeyForUser(I)Z
    .locals 1
    .param p0, "key"    # I

    .line 57
    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "blocking"    # Z

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/UidDetail;

    .line 83
    .local v1, "detail":Lcom/android/settingslib/net/UidDetail;
    monitor-exit v0

    .line 85
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 86
    return-object v1

    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    monitor-exit v2

    .line 97
    return-object v1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    .end local v1
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
