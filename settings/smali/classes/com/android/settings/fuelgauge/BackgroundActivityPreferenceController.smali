.class public Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BackgroundActivityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_BACKGROUND_ACTIVITY:Ljava/lang/String; = "background_activity"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

.field private mTargetPackage:Ljava/lang/String;

.field private final mUid:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/core/InstrumentedPreferenceFragment;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "backend"    # Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 68
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 69
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 70
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 71
    iput p3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    .line 72
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 73
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 75
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "background_activity"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 103
    const-string v0, "background_activity"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x46

    iget v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "mode":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 107
    .local v2, "restricted":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->showDialog(Z)V

    .line 110
    .end local v0
    .end local v2
    :cond_1
    return v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method showDialog(Z)V
    .locals 5
    .param p1, "restricted"    # Z

    .line 132
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    iget v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v0

    .line 136
    .local v0, "appInfo":Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 137
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    .line 140
    .local v2, "tip":Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 141
    invoke-virtual {v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v3

    .line 140
    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object v3

    .line 142
    .local v3, "dialogFragment":Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v4, "BgActivityPrefContr"

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 80
    const/16 v3, 0x46

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    .line 82
    .local v1, "whitelisted":Z
    if-nez v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 88
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 89
    return-void
.end method

.method public updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 114
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const v0, 0x7f1201b0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 116
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 122
    const v1, 0x7f1201af

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 124
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 125
    .local v1, "restricted":Z
    :goto_0
    if-eqz v1, :cond_3

    const v2, 0x7f120be1

    goto :goto_1

    .line 126
    :cond_3
    const v2, 0x7f120be0

    .line 125
    :goto_1
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 128
    .end local v1
    :goto_2
    return-void
.end method
