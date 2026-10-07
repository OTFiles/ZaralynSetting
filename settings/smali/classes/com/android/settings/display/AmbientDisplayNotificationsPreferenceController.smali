.class public Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayNotificationsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final KEY_AMBIENT_DISPLAY_NOTIFICATIONS:Ljava/lang/String; = "ambient_display_notification"

.field private static final MY_USER:I


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->ON:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->OFF:I

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 53
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/display/AmbientDisplaySettings;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ambient_display_notification"

    iget-object v3, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mContext:Landroid/content/Context;

    .line 103
    const v4, 0x7f1200ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "doze_enabled"

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v1

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 105
    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 68
    const-string v0, "ambient_display_notification"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0x1ef

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 71
    :cond_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ambient_display_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;
    .locals 0
    .param p1, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 62
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 63
    return-object p0
.end method
