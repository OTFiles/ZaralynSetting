.class public Lcom/android/settings/notification/DialPadTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DialPadTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 35
    new-instance v7, Lcom/android/settings/notification/DialPadTonePreferenceController$1;

    const-string v3, "dial_pad_tones"

    const-string v4, "dtmf_tone"

    const/4 v8, 0x0

    new-array v6, v8, [I

    const/4 v2, 0x2

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/DialPadTonePreferenceController$1;-><init>(Lcom/android/settings/notification/DialPadTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/DialPadTonePreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    .line 42
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/DialPadTonePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 43
    return-void
.end method
