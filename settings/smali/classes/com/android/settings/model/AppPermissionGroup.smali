.class public final Lcom/android/settings/model/AppPermissionGroup;
.super Ljava/lang/Object;
.source "AppPermissionGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/model/AppPermissionGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAppSupportsRuntimePermissions:Z

.field private final mCollator:Ljava/text/Collator;

.field private mContainsEphemeralPermission:Z

.field private mContainsPreRuntimePermission:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeclaringPackage:Ljava/lang/String;

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mIconPkg:Ljava/lang/String;

.field private final mIconResId:I

.field private final mIsEphemeralApp:Z

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mName:Ljava/lang/String;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/model/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequest:I

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "declaringPackage"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "description"    # Ljava/lang/CharSequence;
    .param p7, "request"    # I
    .param p8, "iconPkg"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "userHandle"    # Landroid/os/UserHandle;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    .line 208
    iput-object p1, p0, Lcom/android/settings/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    .line 209
    iput-object p10, p0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 210
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 211
    iput-object p2, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 212
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    .line 214
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mIsEphemeralApp:Z

    .line 215
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    .line 216
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    .line 217
    iput-object p4, p0, Lcom/android/settings/model/AppPermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    .line 219
    iput-object p5, p0, Lcom/android/settings/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    .line 220
    iput-object p6, p0, Lcom/android/settings/model/AppPermissionGroup;->mDescription:Ljava/lang/CharSequence;

    .line 221
    nop

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mCollator:Ljava/text/Collator;

    .line 223
    iput p7, p0, Lcom/android/settings/model/AppPermissionGroup;->mRequest:I

    .line 224
    if-eqz p9, :cond_1

    .line 225
    iput-object p8, p0, Lcom/android/settings/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    .line 226
    iput p9, p0, Lcom/android/settings/model/AppPermissionGroup;->mIconResId:I

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mIconPkg:Ljava/lang/String;

    .line 229
    const v0, 0x10804ed

    iput v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mIconResId:I

    .line 231
    :goto_1
    return-void
.end method

.method private addPermission(Lcom/android/settings/model/Permission;)V
    .locals 2
    .param p1, "permission"    # Lcom/android/settings/model/Permission;

    .line 690
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-virtual {p1}, Lcom/android/settings/model/Permission;->isEphemeral()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 692
    iput-boolean v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mContainsEphemeralPermission:Z

    .line 694
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/model/Permission;->isRuntimeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    iput-boolean v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mContainsPreRuntimePermission:Z

    .line 697
    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/settings/model/AppPermissionGroup;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "groupInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/pm/PackageItemInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/android/settings/model/AppPermissionGroup;"
        }
    .end annotation

    .local p3, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 113
    new-instance v14, Lcom/android/settings/model/AppPermissionGroup;

    iget-object v3, v13, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v4, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 115
    invoke-static {v11, v13}, Lcom/android/settings/model/AppPermissionGroup;->loadGroupDescription(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Lcom/android/settings/model/AppPermissionGroup;->getRequest(Landroid/content/pm/PackageItemInfo;)I

    move-result v7

    iget-object v8, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v9, v13, Landroid/content/pm/PackageItemInfo;->icon:I

    move-object v0, v14

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/model/AppPermissionGroup;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;ILandroid/os/UserHandle;)V

    .line 118
    .local v0, "group":Lcom/android/settings/model/AppPermissionGroup;
    instance-of v1, v13, Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .end local p3
    .local v1, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    move-object v2, v13

    check-cast v2, Landroid/content/pm/PermissionInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v1
    .restart local p3
    :cond_0
    move-object/from16 v1, p3

    .end local p3
    .restart local v1
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 127
    :cond_1
    iget-object v3, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    .line 128
    .local v3, "permissionCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_a

    .line 129
    iget-object v6, v12, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 131
    .local v6, "requestedPermission":Ljava/lang/String;
    const/4 v7, 0x0

    .line 133
    .local v7, "requestedPermissionInfo":Landroid/content/pm/PermissionInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 134
    .local v9, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v10, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    move-object v7, v9

    .line 136
    goto :goto_3

    .line 138
    .end local v9
    :cond_2
    goto :goto_2

    .line 140
    :cond_3
    :goto_3
    if-nez v7, :cond_4

    .line 141
    goto/16 :goto_7

    .line 145
    :cond_4
    iget v8, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 147
    goto/16 :goto_7

    .line 151
    :cond_5
    iget-object v8, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x16

    if-gt v8, v10, :cond_6

    const-string v8, "android"

    iget-object v10, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 153
    goto :goto_7

    .line 156
    :cond_6
    iget-object v8, v12, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v8, v8, v5

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    move/from16 v16, v9

    goto :goto_4

    :cond_7
    move/from16 v16, v4

    .line 159
    .local v16, "granted":Z
    :goto_4
    const-string v8, "android"

    iget-object v10, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 160
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_8
    move-object v8, v2

    .line 162
    .local v8, "appOp":Ljava/lang/String;
    :goto_5
    if-eqz v8, :cond_9

    const-class v10, Landroid/app/AppOpsManager;

    .line 163
    invoke-virtual {v11, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager;

    iget-object v14, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8, v14, v15}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_9

    move/from16 v18, v9

    goto :goto_6

    :cond_9
    move/from16 v18, v4

    .line 167
    .local v18, "appOpAllowed":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v15, p4

    invoke-virtual {v9, v6, v10, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9

    .line 170
    .local v9, "flags":I
    new-instance v10, Lcom/android/settings/model/Permission;

    iget v14, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v20, v14

    move-object v14, v10

    move-object v15, v6

    move-object/from16 v17, v8

    move/from16 v19, v9

    invoke-direct/range {v14 .. v20}, Lcom/android/settings/model/Permission;-><init>(Ljava/lang/String;ZLjava/lang/String;ZII)V

    .line 172
    .local v10, "permission":Lcom/android/settings/model/Permission;
    invoke-direct {v0, v10}, Lcom/android/settings/model/AppPermissionGroup;->addPermission(Lcom/android/settings/model/Permission;)V

    .line 128
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v16
    .end local v18
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 175
    .end local v5
    :cond_a
    return-object v0

    .line 124
    .end local v3
    :cond_b
    :goto_8
    return-object v2
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 76
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    .line 75
    nop

    .line 78
    iget v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget v3, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    iget v3, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    move-object v0, v1

    .line 86
    .local v0, "groupInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 88
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 95
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 96
    .local v3, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    instance-of v4, v0, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v4, :cond_2

    .line 98
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v2

    .line 102
    goto :goto_1

    .line 100
    :catch_1
    move-exception v2

    .line 105
    :cond_2
    :goto_1
    nop

    .line 106
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 105
    invoke-static {p0, p1, v0, v3, v2}, Lcom/android/settings/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;Landroid/os/UserHandle;)Lcom/android/settings/model/AppPermissionGroup;

    move-result-object v2

    return-object v2

    .line 82
    .end local v0
    .end local v3
    :cond_3
    :goto_2
    return-object v0

    .line 74
    .end local v1
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v0
.end method

.method private static getRequest(Landroid/content/pm/PackageItemInfo;)I
    .locals 1
    .param p0, "group"    # Landroid/content/pm/PackageItemInfo;

    .line 179
    instance-of v0, p0, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v0, :cond_0

    .line 180
    move-object v0, p0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    iget v0, v0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    return v0

    .line 181
    :cond_0
    instance-of v0, p0, Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_1

    .line 182
    move-object v0, p0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    return v0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static loadGroupDescription(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/content/pm/PackageItemInfo;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "description":Ljava/lang/CharSequence;
    instance-of v1, p1, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v1, :cond_0

    .line 191
    move-object v1, p1

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/pm/PermissionGroupInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_0
    instance-of v1, p1, Landroid/content/pm/PermissionInfo;

    if-eqz v1, :cond_1

    .line 194
    move-object v1, p1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 199
    :cond_2
    const-string v0, "\u6267\u884c\u672a\u77e5\u64cd\u4f5c"

    .line 202
    :cond_3
    return-object v0
.end method


# virtual methods
.method public areRuntimePermissionsGranted([Ljava/lang/String;)Z
    .locals 6
    .param p1, "filterPermissions"    # [Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/model/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/model/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 335
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 336
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/model/Permission;

    .line 337
    .local v3, "permission":Lcom/android/settings/model/Permission;
    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/model/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 339
    goto :goto_1

    .line 341
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 342
    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->isGranted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    return v5

    .line 345
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->isGranted()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 346
    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->isAppOpAllowed()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->isReviewRequired()Z

    move-result v4

    if-nez v4, :cond_4

    .line 347
    return v5

    .line 335
    .end local v3
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v2
    :cond_5
    return v1
.end method

.method public compareTo(Lcom/android/settings/model/AppPermissionGroup;)I
    .locals 3
    .param p1, "another"    # Lcom/android/settings/model/AppPermissionGroup;

    .line 635
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/model/AppPermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 636
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    sub-int/2addr v1, v2

    return v1

    .line 641
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/android/settings/model/AppPermissionGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/model/AppPermissionGroup;->compareTo(Lcom/android/settings/model/AppPermissionGroup;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 646
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 647
    return v0

    .line 650
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 651
    return v1

    .line 654
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 655
    return v1

    .line 658
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/settings/model/AppPermissionGroup;

    .line 660
    .local v2, "other":Lcom/android/settings/model/AppPermissionGroup;
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 661
    iget-object v3, v2, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 662
    return v1

    .line 664
    :cond_3
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 665
    return v1

    .line 668
    :cond_4
    return v0
.end method

.method public getDeclaringPackage()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/model/Permission;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public grantRuntimePermissions(Z[Ljava/lang/String;)Z
    .locals 13
    .param p1, "fixedByTheUser"    # Z
    .param p2, "filterPermissions"    # [Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 363
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/model/Permission;

    .line 364
    .local v2, "permission":Lcom/android/settings/model/Permission;
    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/settings/model/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    goto :goto_0

    .line 369
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/model/AppPermissionGroup;->mIsEphemeralApp:Z

    iget-boolean v5, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/model/Permission;->isGrantingAllowed(ZZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    goto :goto_0

    .line 374
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 376
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isSystemFixed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    return v5

    .line 381
    :cond_2
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->hasAppOp()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isAppOpAllowed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 382
    invoke-virtual {v2, v3}, Lcom/android/settings/model/Permission;->setAppOpAllowed(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0, v5}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 387
    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isGranted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 388
    invoke-virtual {v2, v3}, Lcom/android/settings/model/Permission;->setGranted(Z)V

    .line 389
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 390
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 389
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 394
    :cond_4
    if-nez p1, :cond_c

    .line 397
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isUserFixed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isUserSet()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 398
    :cond_5
    invoke-virtual {v2, v5}, Lcom/android/settings/model/Permission;->setUserFixed(Z)V

    .line 399
    invoke-virtual {v2, v5}, Lcom/android/settings/model/Permission;->setUserSet(Z)V

    .line 400
    iget-object v6, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_1

    .line 409
    :cond_6
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isGranted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 410
    goto/16 :goto_0

    .line 413
    :cond_7
    const/4 v4, -0x1

    .line 414
    .local v4, "killUid":I
    const/4 v6, 0x0

    .line 418
    .local v6, "mask":I
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->hasAppOp()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 419
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isAppOpAllowed()Z

    move-result v7

    if-nez v7, :cond_8

    .line 420
    invoke-virtual {v2, v3}, Lcom/android/settings/model/Permission;->setAppOpAllowed(Z)V

    .line 422
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v0, v5}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 428
    move v3, v0

    .line 433
    .end local v4
    .local v3, "killUid":I
    move v4, v3

    .end local v3
    .restart local v4
    :cond_8
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->shouldRevokeOnUpgrade()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 434
    invoke-virtual {v2, v5}, Lcom/android/settings/model/Permission;->setRevokeOnUpgrade(Z)V

    .line 435
    or-int/lit8 v6, v6, 0x8

    .line 441
    :cond_9
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->isReviewRequired()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 442
    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->resetReviewRequired()V

    .line 443
    or-int/lit8 v6, v6, 0x40

    .line 446
    :cond_a
    if-eqz v6, :cond_b

    .line 447
    iget-object v7, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 451
    :cond_b
    const/4 v3, -0x1

    if-eq v4, v3, :cond_c

    .line 452
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    const-string v5, "Permission related app op changed"

    invoke-virtual {v3, v0, v5}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 455
    .end local v2
    .end local v4
    .end local v6
    :cond_c
    :goto_1
    goto/16 :goto_0

    .line 457
    :cond_d
    return v3
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGrantingAllowed()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mIsEphemeralApp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mContainsEphemeralPermission:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mContainsPreRuntimePermission:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSystemFixed()Z
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 624
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 625
    iget-object v3, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/model/Permission;

    .line 626
    .local v3, "permission":Lcom/android/settings/model/Permission;
    invoke-virtual {v3}, Lcom/android/settings/model/Permission;->isSystemFixed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    const/4 v1, 0x1

    return v1

    .line 624
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v2
    :cond_1
    return v1
.end method

.method public revokeRuntimePermissions(Z[Ljava/lang/String;)Z
    .locals 17
    .param p1, "fixedByTheUser"    # Z
    .param p2, "filterPermissions"    # [Ljava/lang/String;

    move-object/from16 v0, p0

    .line 465
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 470
    .local v2, "uid":I
    iget-object v3, v0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/model/Permission;

    .line 471
    .local v4, "permission":Lcom/android/settings/model/Permission;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/settings/model/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 473
    goto :goto_0

    .line 476
    :cond_0
    iget-boolean v6, v0, Lcom/android/settings/model/AppPermissionGroup;->mAppSupportsRuntimePermissions:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 478
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isSystemFixed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 479
    return v7

    .line 483
    :cond_1
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isGranted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 484
    invoke-virtual {v4, v7}, Lcom/android/settings/model/Permission;->setGranted(Z)V

    .line 485
    iget-object v6, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 486
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    .line 485
    invoke-virtual {v6, v8, v9, v10}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 490
    :cond_2
    if-eqz p1, :cond_4

    .line 492
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isUserSet()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isUserFixed()Z

    move-result v8

    if-nez v8, :cond_b

    .line 493
    :cond_3
    invoke-virtual {v4, v7}, Lcom/android/settings/model/Permission;->setUserSet(Z)V

    .line 494
    invoke-virtual {v4, v5}, Lcom/android/settings/model/Permission;->setUserFixed(Z)V

    .line 495
    iget-object v9, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v5, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x3

    const/4 v13, 0x2

    iget-object v14, v0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v9 .. v14}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 503
    :cond_4
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isUserSet()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isUserFixed()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 504
    :cond_5
    invoke-virtual {v4, v5}, Lcom/android/settings/model/Permission;->setUserSet(Z)V

    .line 505
    invoke-virtual {v4, v7}, Lcom/android/settings/model/Permission;->setUserFixed(Z)V

    .line 507
    iget-object v9, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v5, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x3

    const/4 v13, 0x1

    iget-object v14, v0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v9 .. v14}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_1

    .line 517
    :cond_6
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isGranted()Z

    move-result v8

    if-nez v8, :cond_7

    .line 518
    goto/16 :goto_0

    .line 521
    :cond_7
    const/4 v8, 0x0

    .line 522
    .local v8, "mask":I
    const/4 v9, 0x0

    .line 523
    .local v9, "flags":I
    const/4 v10, -0x1

    .line 527
    .local v10, "killUid":I
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->hasAppOp()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 528
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->isAppOpAllowed()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 529
    invoke-virtual {v4, v7}, Lcom/android/settings/model/Permission;->setAppOpAllowed(Z)V

    .line 531
    iget-object v7, v0, Lcom/android/settings/model/AppPermissionGroup;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->getAppOp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2, v5}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 536
    move v7, v2

    .line 541
    .end local v10
    .local v7, "killUid":I
    move v10, v7

    .end local v7
    .restart local v10
    :cond_8
    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->shouldRevokeOnUpgrade()Z

    move-result v7

    if-nez v7, :cond_9

    .line 542
    invoke-virtual {v4, v5}, Lcom/android/settings/model/Permission;->setRevokeOnUpgrade(Z)V

    .line 543
    or-int/lit8 v8, v8, 0x8

    .line 544
    or-int/lit8 v9, v9, 0x8

    .line 548
    :cond_9
    if-eqz v8, :cond_a

    .line 549
    iget-object v11, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Lcom/android/settings/model/Permission;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v5, v0, Lcom/android/settings/model/AppPermissionGroup;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/model/AppPermissionGroup;->mUserHandle:Landroid/os/UserHandle;

    move v14, v8

    move v15, v9

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 553
    :cond_a
    const/4 v5, -0x1

    if-eq v10, v5, :cond_b

    .line 554
    iget-object v5, v0, Lcom/android/settings/model/AppPermissionGroup;->mActivityManager:Landroid/app/ActivityManager;

    const-string v7, "Permission related app op changed"

    invoke-virtual {v5, v2, v7}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 557
    .end local v4
    .end local v8
    .end local v9
    .end local v10
    :cond_b
    :goto_1
    goto/16 :goto_0

    .line 559
    :cond_c
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v1, p0, Lcom/android/settings/model/AppPermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    const-string v1, ", <has permissions>}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 684
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
