.class public Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ApplicationFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;,
        Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mPms:Landroid/content/pm/IPackageManager;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "pms"    # Landroid/content/pm/IPackageManager;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 53
    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    .line 54
    iput-object p4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    .line 56
    return-void
.end method


# virtual methods
.method public calculateNumberOfAppsWithAdminGrantedPermissions([Ljava/lang/String;ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 8
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .line 79
    new-instance v7, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object v0, v7

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 82
    .local v0, "counter":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;
    if-eqz p2, :cond_0

    .line 83
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->executeInForeground()V

    .line 87
    :goto_0
    return-void
.end method

.method public calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 3
    .param p1, "async"    # Z
    .param p2, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .line 60
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 62
    .local v0, "counter":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
    if-eqz p1, :cond_0

    .line 63
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->executeInForeground()V

    .line 67
    :goto_0
    return-void
.end method

.method public findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 102
    .local v1, "uniqueApps":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/settings/applications/UserAppInfo;>;"
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 103
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    .line 105
    .local v5, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    .line 106
    invoke-interface {v6, v5, p1}, Landroid/content/pm/IPackageManager;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 107
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_3

    .line 108
    const/4 v7, 0x0

    .line 109
    .local v7, "componentInfo":Landroid/content/pm/ComponentInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    .line 110
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v8

    goto :goto_1

    .line 111
    :cond_0
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_1

    .line 112
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v7, v8

    goto :goto_1

    .line 113
    :cond_1
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v8, :cond_2

    .line 114
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    move-object v7, v8

    .line 116
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 117
    new-instance v8, Lcom/android/settings/applications/UserAppInfo;

    iget-object v9, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v2, v9}, Lcom/android/settings/applications/UserAppInfo;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 118
    .local v8, "info":Lcom/android/settings/applications/UserAppInfo;
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 119
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v6
    .end local v7
    .end local v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    .line 123
    :catch_0
    move-exception v6

    .line 103
    .end local v5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :cond_4
    return-object v0
.end method

.method public getKeepEnabledPackages()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 133
    .local v0, "keepEnabledPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "defaultDialer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 139
    .local v2, "defaultSms":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    return-object v0
.end method

.method public listAppsWithAdminGrantedPermissions([Ljava/lang/String;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 8
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 92
    new-instance v7, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    move-object v0, v7

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 95
    .local v0, "lister":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public listPolicyInstalledApps(Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;

    .line 71
    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;-><init>(Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;)V

    .line 73
    .local v0, "lister":Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserPolicyInstalledAppLister;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method
