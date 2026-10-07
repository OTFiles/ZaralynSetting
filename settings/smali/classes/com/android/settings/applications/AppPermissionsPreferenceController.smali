.class public Lcom/android/settings/applications/AppPermissionsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppPermissionsPreferenceController.java"


# static fields
.field private static final KEY_APP_PERMISSION_GROUPS:Ljava/lang/String; = "manage_perms"

.field private static final NUM_PERMISSION_TO_USE:I = 0x3

.field private static final PERMISSION_GROUPS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppPermissionPrefCtrl"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    const-string v0, "android.permission-group.LOCATION"

    const-string v1, "android.permission-group.MICROPHONE"

    const-string v2, "android.permission-group.CAMERA"

    const-string v3, "android.permission-group.SMS"

    const-string v4, "android.permission-group.CONTACTS"

    const-string v5, "android.permission-group.PHONE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->PERMISSION_GROUPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const-string v0, "manage_perms"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 51
    return-void
.end method

.method private concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "currentSummary"    # Ljava/lang/CharSequence;
    .param p2, "permission"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    return-object v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120730

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllPermissionsInGroups()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 119
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/settings/applications/AppPermissionsPreferenceController;->PERMISSION_GROUPS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 121
    .local v5, "group":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 122
    invoke-virtual {v6, v5, v3}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 123
    .local v6, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 124
    .local v8, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v9, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    .end local v6
    :cond_0
    goto :goto_2

    .line 126
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "AppPermissionPrefCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting permissions in group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v5
    .end local v6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-object v0
.end method

.method private getGrantedPermissionGroups(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 83
    .local v0, "grantedPermissionGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 86
    .local v3, "installedPackage":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-nez v4, :cond_0

    .line 87
    goto :goto_0

    .line 89
    :cond_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 90
    .local v7, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 92
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v7
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 95
    .end local v3
    :cond_2
    goto :goto_0

    .line 96
    :cond_3
    return-object v0
.end method

.method private getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "group"    # Ljava/lang/String;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 110
    .local v0, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    .end local v0
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AppPermissionPrefCtrl"

    const-string v2, "Error getting permissions label."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0
    return-object p1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 10

    .line 65
    invoke-direct {p0}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->getAllPermissionsInGroups()Ljava/util/Set;

    move-result-object v0

    .line 66
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->getGrantedPermissionGroups(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 67
    .local v1, "grantedPermissionGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 68
    .local v2, "summary":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 69
    .local v3, "count":I
    sget-object v4, Lcom/android/settings/applications/AppPermissionsPreferenceController;->PERMISSION_GROUPS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v3

    move-object v3, v2

    move v2, v6

    .end local v2
    .local v3, "summary":Ljava/lang/CharSequence;
    .local v7, "count":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v8, v4, v2

    .line 70
    .local v8, "group":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 71
    goto :goto_1

    .line 73
    :cond_0
    invoke-direct {p0, v3, v8}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 74
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x3

    if-lt v7, v9, :cond_1

    .line 75
    goto :goto_2

    .line 69
    .end local v8
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    :goto_2
    if-lez v7, :cond_3

    iget-object v2, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120149

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return-object v2
.end method
