.class public Lcom/android/settings/gestures/PickupGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "PickupGesturePreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_pick_up_video"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final SECURE_KEY:Ljava/lang/String;

.field private mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mPickUpPrefKey:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->ON:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->OFF:I

    .line 44
    const-string v0, "doze_pulse_on_pick_up"

    iput-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->SECURE_KEY:Ljava/lang/String;

    .line 52
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    .line 53
    iput-object p2, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 62
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "ambientConfig":Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    const-string v1, "pref_pickup_gesture_suggestion_complete"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 63
    :goto_1
    return v2
.end method


# virtual methods
.method public canHandleClicks()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->pulseOnPickupCanBeModified()Z

    move-result v0

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->dozePulsePickupSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x2

    return v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const/4 v0, 0x4

    return v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 119
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/gestures/PickupGestureSettings;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mContext:Landroid/content/Context;

    .line 121
    const v4, 0x7f120555

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "doze_pulse_on_pick_up"

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v1

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 123
    return-object v1
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "gesture_pick_up_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_pick_up"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method pulseOnPickupCanBeModified()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupCanBeModified(I)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_pick_up"

    .line 109
    nop

    .line 108
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;
    .locals 0
    .param p1, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 57
    iput-object p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 58
    return-object p0
.end method
