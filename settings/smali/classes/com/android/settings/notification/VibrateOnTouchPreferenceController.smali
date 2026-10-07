.class public Lcom/android/settings/notification/VibrateOnTouchPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "VibrateOnTouchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    new-instance v7, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;

    const-string v3, "vibrate_on_touch"

    const-string v4, "haptic_feedback_enabled"

    const/4 v8, 0x0

    new-array v6, v8, [I

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;-><init>(Lcom/android/settings/notification/VibrateOnTouchPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v7, p0, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    .line 41
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 27
    invoke-static {p0}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 46
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
