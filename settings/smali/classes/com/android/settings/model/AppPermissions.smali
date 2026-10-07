.class public final Lcom/android/settings/model/AppPermissions;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# instance fields
.field private final mAppLabel:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private final mFilterPermissions:[Ljava/lang/String;

.field private final mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameToGroupMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnErrorCallback:Ljava/lang/Runnable;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mSortGroups:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "filterPermissions"    # [Ljava/lang/String;
    .param p4, "sortGroups"    # Z
    .param p5, "onErrorCallback"    # Ljava/lang/Runnable;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    .line 50
    iput-object p1, p0, Lcom/android/settings/model/AppPermissions;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 52
    iput-object p3, p0, Lcom/android/settings/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/model/AppPermissions;->mAppLabel:Ljava/lang/CharSequence;

    .line 56
    iput-boolean p4, p0, Lcom/android/settings/model/AppPermissions;->mSortGroups:Z

    .line 57
    iput-object p5, p0, Lcom/android/settings/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/model/AppPermissions;->loadPermissionGroups()V

    .line 59
    return-void
.end method

.method private addPermissionGroupIfNeeded(Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/model/AppPermissions;->getGroupForPermission(Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, p1}, Lcom/android/settings/model/AppPermissionGroup;->create(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;

    move-result-object v0

    .line 147
    .local v0, "group":Lcom/android/settings/model/AppPermissionGroup;
    if-nez v0, :cond_1

    .line 148
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method private loadPackageInfo()V
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 104
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/settings/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/model/AppPermissions;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 105
    .end local v0
    :cond_0
    :goto_0
    return-void
.end method

.method private loadPermissionGroups()V
    .locals 10

    .line 108
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mFilterPermissions:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 116
    .local v4, "filterPermission":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 117
    .local v8, "requestedPerm":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 118
    nop

    .line 116
    .end local v8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 120
    .restart local v8
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/settings/model/AppPermissions;->addPermissionGroupIfNeeded(Ljava/lang/String;)V

    .line 121
    nop

    .line 115
    .end local v4
    .end local v8
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 126
    .local v3, "requestedPerm":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/model/AppPermissions;->addPermissionGroupIfNeeded(Ljava/lang/String;)V

    .line 125
    .end local v3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 130
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/model/AppPermissions;->mSortGroups:Z

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/model/AppPermissionGroup;

    .line 136
    .local v1, "group":Lcom/android/settings/model/AppPermissionGroup;
    iget-object v2, p0, Lcom/android/settings/model/AppPermissions;->mNameToGroupMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/android/settings/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v1
    goto :goto_3

    .line 138
    :cond_6
    return-void
.end method


# virtual methods
.method public getGroupForPermission(Ljava/lang/String;)Lcom/android/settings/model/AppPermissionGroup;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/model/AppPermissionGroup;

    .line 163
    .local v1, "group":Lcom/android/settings/model/AppPermissionGroup;
    invoke-virtual {v1, p1}, Lcom/android/settings/model/AppPermissionGroup;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    return-object v1

    .line 166
    .end local v1
    :cond_0
    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/model/AppPermissionGroup;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/model/AppPermissions;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/model/AppPermissions;->loadPackageInfo()V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/model/AppPermissions;->loadPermissionGroups()V

    .line 68
    return-void
.end method
