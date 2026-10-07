.class public abstract Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VibrationIntensityPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

.field protected final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefkey"    # Ljava/lang/String;
    .param p3, "settingKey"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    .line 48
    iput-object p3, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;-><init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    .line 35
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public static getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intensity"    # I

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 86
    .local v0, "supportsMultipleIntensities":Z
    if-eqz v0, :cond_0

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 97
    const-string v1, ""

    return-object v1

    .line 95
    :pswitch_0    # 0x3
    const v1, 0x7f120088

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :pswitch_1    # 0x2
    const v1, 0x7f12008a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    :pswitch_2    # 0x1
    const v1, 0x7f120089

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    :pswitch_3    # 0x0
    const v1, 0x7f12008b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    const v1, 0x7f120e45

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    :cond_1
    const v1, 0x7f120e47

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 74
    return-void
.end method

.method protected abstract getDefaultIntensity()I
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getDefaultIntensity()I

    move-result v2

    .line 78
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "intensity":I
    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public onStart()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    iget-object v1, v1, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    return-void
.end method
