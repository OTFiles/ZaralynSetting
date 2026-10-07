.class public Lcom/android/settings/vpn2/AppManagementFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

.field private mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mPreferenceVersion:Landroid/support/v7/preference/Preference;

.field private final mUserId:I

.field private mVpnLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    .line 84
    new-instance v0, Lcom/android/settings/vpn2/AppManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/AppManagementFragment$1;-><init>(Lcom/android/settings/vpn2/AppManagementFragment;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/AppManagementFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/AppManagementFragment;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn2/AppManagementFragment;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/AppManagementFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpn(ZZ)Z

    move-result v0

    return v0
.end method

.method static appHasVpnPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 311
    const-string v0, "appops"

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 313
    .local v0, "service":Landroid/app/AppOpsManager;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0x2f

    aput v6, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    .line 315
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2
.end method

.method private getAlwaysOnVpnPackage()Ljava/lang/String;
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAnotherVpnActive()Z
    .locals 4

    .line 323
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityService:Landroid/net/IConnectivityManager;

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 324
    .local v1, "config":Lcom/android/internal/net/VpnConfig;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 325
    .end local v1
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AppManagementFragment"

    const-string v3, "Failure to look up active VPN"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    return v0
.end method

.method private isVpnAlwaysOn()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadInfo()Z
    .locals 5

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 279
    const-string v2, "AppManagementFragment"

    const-string v3, "empty bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v1

    .line 283
    :cond_0
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 285
    const-string v2, "AppManagementFragment"

    const-string v3, "empty package name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v1

    .line 290
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    .line 295
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 297
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    .line 298
    const-string v2, "AppManagementFragment"

    const-string v3, "package does not include an application"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/android/settings/vpn2/AppManagementFragment;->appHasVpnPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    const-string v2, "AppManagementFragment"

    const-string v3, "package didn\'t register VPN profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v1

    .line 306
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppManagementFragment"

    const-string v4, "package not found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    return v1
.end method

.method private onAlwaysOnVpnClick(ZZ)Z
    .locals 9
    .param p1, "alwaysOnSetting"    # Z
    .param p2, "lockdown"    # Z

    .line 189
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAnotherVpnActive()Z

    move-result v6

    .line 190
    .local v6, "replacing":Z
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v7

    .line 191
    .local v7, "wasLockdown":Z
    invoke-static {v6, v7, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v8, 0x0

    .line 194
    .local v8, "options":Landroid/os/Bundle;
    move-object v0, p0

    move v1, v6

    move v2, p1

    move v3, v7

    move v4, p2

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V

    .line 196
    const/4 v0, 0x0

    return v0

    .line 199
    .end local v8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(ZZ)Z

    move-result v0

    return v0
.end method

.method private onForgetVpnClick()Z
    .locals 7

    .line 179
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method private setAlwaysOnVpn(ZZ)Z
    .locals 3
    .param p1, "isEnabled"    # Z
    .param p2, "isLockdown"    # Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    .line 227
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 226
    :goto_0
    invoke-virtual {v0, v1, v2, p2}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setAlwaysOnVpnByUI(ZZ)Z
    .locals 2
    .param p1, "isEnabled"    # Z
    .param p2, "isLockdown"    # Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 216
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpn(ZZ)Z

    move-result v0

    .line 217
    .local v0, "success":Z
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->show(Lcom/android/settings/vpn2/AppManagementFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    .line 222
    :goto_0
    return v0
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings/vpn2/AppPreference;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Lcom/android/settings/vpn2/AppPreference;
    .param p2, "sourceMetricsCategory"    # I

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "package"

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/vpn2/AppManagementFragment;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    .line 110
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 112
    return-void
.end method

.method private updateRestrictedViews()V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_config_vpn"

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_config_vpn"

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    const-string v1, "no_config_vpn"

    iget v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v1, 0x7f120ffd

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v1, 0x7f120fff

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 262
    :cond_1
    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v0

    .line 233
    .local v0, "alwaysOn":Z
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 236
    .local v1, "lockdown":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 240
    .end local v0
    .end local v1
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 175
    const/16 v0, 0x64

    return v0
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "isEnabled"    # Z
    .param p3, "isLockdown"    # Z

    .line 204
    invoke-direct {p0, p2, p3}, Lcom/android/settings/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(ZZ)Z

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f1500bc

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 121
    const-string v0, "connectivity"

    .line 122
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 124
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceVersion:Landroid/support/v7/preference/Preference;

    .line 125
    const-string v0, "always_on_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 126
    const-string v0, "lockdown_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 127
    const-string v0, "forget_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    .line 129
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 162
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x77b1353c

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const v2, -0x6bce99fe

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lockdown_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "always_on_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 168
    const-string v0, "AppManagementFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown key is clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v3

    .line 166
    :pswitch_0    # 0x1
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(ZZ)Z

    move-result v0

    return v0

    .line 164
    :pswitch_1    # 0x0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceLockdown:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(ZZ)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 150
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x233fe45e

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "forget_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 155
    const-string v1, "AppManagementFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown key is clicked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v2

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->onForgetVpnClick()Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 7

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->loadInfo()Z

    move-result v0

    .line 139
    .local v0, "isInfoLoaded":Z
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPreferenceVersion:Landroid/support/v7/preference/Preference;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121039

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->updateUI()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->finish()V

    .line 146
    :goto_0
    return-void
.end method
