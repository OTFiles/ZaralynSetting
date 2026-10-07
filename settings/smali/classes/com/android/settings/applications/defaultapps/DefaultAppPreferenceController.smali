.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DefaultAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field protected mUserId:I

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 52
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    .line 54
    return-void
.end method

.method public static synthetic lambda$mayUpdateGearIcon$0(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V
    .locals 1
    .param p1, "settingIntent"    # Landroid/content/Intent;
    .param p2, "p"    # Lcom/android/settings/widget/GearPreference;

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private mayUpdateGearIcon(Lcom/android/settingslib/applications/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "app"    # Lcom/android/settingslib/applications/DefaultAppInfo;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 78
    instance-of v0, p2, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "settingIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 83
    move-object v1, p2

    check-cast v1, Lcom/android/settings/widget/GearPreference;

    new-instance v2, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    goto :goto_0

    .line 86
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/settings/widget/GearPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 88
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    return-object v1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 105
    .local v0, "app":Lcom/android/settingslib/applications/DefaultAppInfo;
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 108
    :cond_1
    return-object v1
.end method

.method protected abstract getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 116
    .local v0, "app":Lcom/android/settingslib/applications/DefaultAppInfo;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 119
    :cond_1
    return-object v1
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 1
    .param p1, "info"    # Lcom/android/settingslib/applications/DefaultAppInfo;

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 59
    .local v0, "app":Lcom/android/settingslib/applications/DefaultAppInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 60
    .local v1, "defaultAppLabel":Ljava/lang/CharSequence;
    instance-of v2, p1, Lcom/android/settingslib/TwoTargetPreference;

    if-eqz v2, :cond_0

    .line 64
    move-object v2, p1

    check-cast v2, Lcom/android/settingslib/TwoTargetPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    .line 66
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->setSafeIcon(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v2, "DefaultAppPrefControl"

    const-string v3, "No default app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v2, 0x7f12012d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mayUpdateGearIcon(Lcom/android/settingslib/applications/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V

    .line 75
    return-void
.end method
