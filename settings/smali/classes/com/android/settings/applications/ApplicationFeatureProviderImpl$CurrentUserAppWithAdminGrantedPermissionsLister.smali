.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAppWithAdminGrantedPermissionsLister"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "packageManagerService"    # Landroid/content/pm/IPackageManager;
    .param p4, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 202
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/applications/AppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V

    .line 204
    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 205
    return-void
.end method


# virtual methods
.method protected onAppListBuilt(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;->onListOfAppsResult(Ljava/util/List;)V

    .line 210
    return-void
.end method
