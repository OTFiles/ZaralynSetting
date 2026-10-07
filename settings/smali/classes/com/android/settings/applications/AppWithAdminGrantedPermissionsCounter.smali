.class public abstract Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "AppWithAdminGrantedPermissionsCounter.java"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManagerService:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p4, "packageManagerService"    # Landroid/content/pm/IPackageManager;
    .param p5, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    .line 44
    iput-object p5, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 45
    return-void
.end method

.method public static includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p0, "permissions"    # [Ljava/lang/String;
    .param p1, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "packageManagerService"    # Landroid/content/pm/IPackageManager;
    .param p4, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 56
    iget v0, p4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 59
    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    .line 60
    .local v4, "permission":Ljava/lang/String;
    const/4 v5, 0x0

    iget-object v6, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v4}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 62
    return v2

    .line 59
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    return v1

    .line 70
    :cond_2
    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 71
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 70
    invoke-virtual {p2, v0, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 73
    return v1

    .line 76
    :cond_3
    :try_start_0
    array-length v0, p0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v4, p0, v3

    .line 77
    .restart local v4
    iget v5, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p3, v4, v5}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_4

    .line 79
    return v2

    .line 76
    .end local v4
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    :cond_5
    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    .line 84
    :goto_2
    return v1
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
