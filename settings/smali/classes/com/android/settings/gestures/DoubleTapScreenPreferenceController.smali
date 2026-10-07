.class public Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "DoubleTapScreenPreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_double_tap_screen_video"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final SECURE_KEY:Ljava/lang/String;

.field private mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mDoubleTapScreenPrefKey:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->ON:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->OFF:I

    .line 45
    const-string v0, "doze_pulse_on_double_tap"

    iput-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->SECURE_KEY:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    .line 54
    iput-object p2, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mDoubleTapScreenPrefKey:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 63
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->isSuggestionComplete(Lcom/android/internal/hardware/AmbientDisplayConfiguration;Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method static isSuggestionComplete(Lcom/android/internal/hardware/AmbientDisplayConfiguration;Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "pref_double_tap_screen_suggestion_complete"

    .line 70
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 69
    :goto_1
    return v1
.end method


# virtual methods
.method protected canHandleClicks()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x2

    return v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    const/4 v0, 0x4

    return v0

    .line 89
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 116
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mDoubleTapScreenPrefKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    .line 118
    const v4, 0x7f120555

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "doze_pulse_on_double_tap"

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v1

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 120
    return-object v1
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, "gesture_double_tap_screen_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_double_tap_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_double_tap"

    .line 100
    nop

    .line 99
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;
    .locals 0
    .param p1, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 58
    iput-object p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 59
    return-object p0
.end method
