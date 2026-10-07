.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field static final LOCATION_OPS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 62
    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 27
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    move-object/from16 v1, p0

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    .line 125
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "highBattery":Z
    const/4 v2, 0x0

    .line 127
    .local v2, "normalBattery":Z
    const-wide/16 v3, 0x0

    .line 129
    .local v3, "locationRequestFinishTime":J
    const-wide/32 v5, 0x5265c00

    sub-long v14, p1, v5

    .line 130
    .local v14, "recentLocationCutoffTime":J
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v16, v0

    move/from16 v19, v2

    move-wide/from16 v17, v3

    .end local v0
    .end local v2
    .end local v3
    .local v16, "highBattery":Z
    .local v17, "locationRequestFinishTime":J
    .local v19, "normalBattery":Z
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 131
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-ltz v2, :cond_1

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v4

    int-to-long v6, v4

    add-long v17, v2, v6

    .line 133
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .end local v0
    goto :goto_1

    .line 138
    .restart local v0
    :pswitch_0    # 0x2a
    const/16 v16, 0x1

    .line 139
    goto :goto_1

    .line 135
    :pswitch_1    # 0x29
    const/4 v2, 0x1

    .line 136
    .end local v19
    .restart local v2
    nop

    .line 144
    move/from16 v19, v2

    .end local v0
    .end local v2
    .restart local v19
    :cond_1
    :goto_1
    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    if-nez v16, :cond_4

    if-nez v19, :cond_4

    .line 147
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hadn\'t used location within the time interval."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    return-object v0

    .line 154
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    .line 155
    .local v11, "uid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 157
    .local v9, "userId":I
    move-object/from16 v20, v0

    .line 159
    .local v20, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :try_start_0
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v12, v3, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v2

    .line 161
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v10, :cond_5

    .line 162
    :try_start_1
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null application info retrieved for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 178
    .end local v10
    :catch_0
    move-exception v0

    move v1, v9

    move/from16 v26, v11

    goto :goto_2

    .line 167
    .restart local v10
    :cond_5
    :try_start_2
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 168
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v2, v10, v9}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 169
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v8, v2

    .line 170
    .local v8, "appLabel":Ljava/lang/CharSequence;
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v8, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 171
    .local v2, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 174
    const/4 v2, 0x0

    .line 176
    .end local v2
    .local v21, "badgedAppLabel":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v21, v2

    new-instance v22, Lcom/android/settingslib/location/RecentLocationApps$Request;

    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v23, 0x0

    move-object/from16 v2, v22

    move-object v3, v12

    move-object v4, v0

    move-object v6, v8

    move/from16 v7, v16

    move-object/from16 v24, v8

    move-object/from16 v8, v21

    .end local v8
    .local v24, "appLabel":Ljava/lang/CharSequence;
    move v1, v9

    move-object/from16 v25, v10

    move-wide/from16 v9, v17

    .end local v9
    .end local v10
    .local v1, "userId":I
    .local v25, "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v26, v11

    move-object/from16 v11, v23

    .end local v11
    .local v26, "uid":I
    :try_start_3
    invoke-direct/range {v2 .. v11}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V

    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v20, v22

    .line 180
    .end local v0
    .end local v5
    .end local v21
    .end local v24
    .end local v25
    goto :goto_3

    .line 178
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1
    .end local v26
    .restart local v9
    .restart local v11
    :catch_2
    move-exception v0

    move v1, v9

    move/from16 v26, v11

    .line 179
    .end local v9
    .end local v11
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1
    .restart local v26
    :goto_2
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0
    :goto_3
    return-object v20

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_1    # 0x29
        :pswitch_0    # 0x2a
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 72
    .local v1, "aoManager":Landroid/app/AppOpsManager;
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 77
    .local v4, "appOpsCount":I
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v5, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    .local v6, "now":J
    iget-object v8, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 80
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    .line 82
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_4

    .line 83
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 86
    .local v11, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    .line 88
    .local v13, "uid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 89
    .local v14, "userId":I
    const/16 v15, 0x3e8

    if-ne v13, v15, :cond_1

    const-string v15, "android"

    .line 90
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 91
    .local v15, "isAndroidOs":Z
    :goto_2
    if-nez v15, :cond_3

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 92
    goto :goto_3

    .line 94
    :cond_2
    invoke-direct {v0, v6, v7, v11}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v3

    .line 95
    .local v3, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3
    .end local v11
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 99
    .end local v10
    :cond_4
    return-object v5
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    new-instance v1, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    return-object v0
.end method
