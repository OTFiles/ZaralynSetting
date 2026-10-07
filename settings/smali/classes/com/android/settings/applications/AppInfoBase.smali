.class public abstract Lcom/android/settings/applications/AppInfoBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field protected mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field protected mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppsControlDisallowedBySystem:Z

.field protected mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected mFinishing:Z

.field protected mListeningToPackageRemove:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field protected mState:Lcom/android/settingslib/applications/ApplicationsState;

.field protected mUsbManager:Landroid/hardware/usb/IUsbManager;

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/android/settings/applications/AppInfoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 303
    new-instance v0, Lcom/android/settings/applications/AppInfoBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppInfoBase$1;-><init>(Lcom/android/settings/applications/AppInfoBase;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V
    .locals 4
    .param p1, "titleRes"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "source"    # Landroid/app/Fragment;
    .param p5, "request"    # I
    .param p6, "sourceMetricsCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Fragment;",
            "II)V"
        }
    .end annotation

    .line 229
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v1, ":android:extra_user_argument"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    :cond_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p4}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 240
    invoke-virtual {v1, p6}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 241
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    .line 243
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 244
    invoke-virtual {v1, p4, p5}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 246
    return-void
.end method


# virtual methods
.method protected abstract createDialog(II)Landroid/app/AlertDialog;
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 96
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 97
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 98
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    .line 100
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 101
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->startListeningToPackageRemove()V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->stopListeningToPackageRemove()V

    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 125
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 213
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 218
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 198
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 225
    :cond_0
    return-void
.end method

.method protected onPackageRemoved()V
    .locals 1

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 300
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :goto_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 203
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 118
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 188
    return-void
.end method

.method protected abstract refreshUi()Z
.end method

.method protected retrieveAppEntry()Ljava/lang/String;
    .locals 6

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 130
    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 132
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 133
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 137
    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 139
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    goto :goto_2

    .line 141
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    .line 143
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 144
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_4

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v4, 0x8001200

    iget v5, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when retrieving package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v1
    :goto_3
    goto :goto_4

    .line 155
    :cond_4
    sget-object v3, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    const-string v4, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 159
    :goto_4
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object v1
.end method

.method protected setIntentAndFinish(ZZ)V
    .locals 2
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .line 165
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 168
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackTask()V

    .line 170
    .end local v0
    .end local v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 172
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    .line 173
    return-void
.end method

.method protected showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .line 176
    invoke-static {p1, p2}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object v0

    .line 177
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 3

    .line 279
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    .line 283
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 2

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    return-void
.end method
