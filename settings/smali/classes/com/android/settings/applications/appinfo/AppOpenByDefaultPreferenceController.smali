.class public Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppOpenByDefaultPreferenceController.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 48
    .local v0, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 59
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4}, Lcom/android/settingslib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 66
    :goto_0
    return-void
.end method
