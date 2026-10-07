.class public Lcom/android/settings/gestures/GesturesSettingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GesturesSettingPreferenceController.java"


# static fields
.field private static final FAKE_PREF_KEY:Ljava/lang/String; = "fake_key_only_for_get_available"

.field private static final KEY_GESTURES_SETTINGS:Ljava/lang/String; = "gesture_settings"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mGestureControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const-string v0, "gesture_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 43
    return-void
.end method

.method private static buildAllPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "ambientDisplayConfiguration":Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v2, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    move-result-object v2

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/android/settings/gestures/DoubleTwistPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTwistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/PickupGesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    move-result-object v2

    .line 76
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/android/settings/gestures/PreventRingingPreferenceController;

    const-string v3, "fake_key_only_for_get_available"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/gestures/PreventRingingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v1
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->buildAllPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    .local v0, "isAvailable":Z
    iget-object v1, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mGestureControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 52
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 53
    .end local v2
    goto :goto_0

    .line 54
    :cond_3
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    :goto_3
    return v3
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSensorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, ""

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "assist_gesture_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 90
    .local v1, "assistGestureEnabled":Z
    :goto_0
    const-string v4, "assist_gesture_silence_alerts_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 93
    .local v2, "assistGestureSilenceEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 94
    iget-object v3, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12078b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 97
    :cond_3
    if-eqz v2, :cond_4

    .line 98
    iget-object v3, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12078a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 101
    :cond_4
    iget-object v3, p0, Lcom/android/settings/gestures/GesturesSettingPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120789

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method
