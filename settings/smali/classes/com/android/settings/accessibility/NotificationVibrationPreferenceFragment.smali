.class public Lcom/android/settings/accessibility/NotificationVibrationPreferenceFragment;
.super Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.source "NotificationVibrationPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultVibrationIntensity()I
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/accessibility/NotificationVibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 56
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 32
    const/16 v0, 0x50d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 37
    const v0, 0x7f150004

    return v0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 1

    .line 50
    const/4 v0, 0x5

    return v0
.end method

.method protected getVibrationIntensitySetting()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "notification_vibration_intensity"

    return-object v0
.end method
