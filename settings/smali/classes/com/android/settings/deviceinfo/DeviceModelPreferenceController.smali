.class public Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DeviceModelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mHost:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/app/Fragment;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mHost:Landroid/app/Fragment;

    .line 40
    return-void
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 50
    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 51
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208e1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 53
    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "device_model"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_model"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->newInstance()Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;

    move-result-object v0

    .line 68
    .local v0, "fragment":Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mHost:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HardwareInfo"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    return v1
.end method

.method public isAvailable()Z
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
