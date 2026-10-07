.class public abstract Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppLister;
.source "AppWithAdminGrantedPermissionsLister.java"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManagerService:Landroid/content/pm/IPackageManager;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "packageManagerService"    # Landroid/content/pm/IPackageManager;
    .param p4, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p5, "userManager"    # Landroid/os/UserManager;

    .line 38
    invoke-direct {p0, p2, p5}, Lcom/android/settings/applications/AppLister;-><init>(Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;)V

    .line 39
    iput-object p1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    .line 41
    iput-object p4, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 46
    iget-object v0, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
