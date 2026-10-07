.class public Lcom/android/settings/accessibility/HapticFeedbackIntensityPreferenceController;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.source "HapticFeedbackIntensityPreferenceController.java"


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "touch_vibration_preference_screen"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const-string v0, "touch_vibration_preference_screen"

    const-string v1, "haptic_feedback_intensity"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultIntensity()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticFeedbackIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    return v0
.end method
