.class public Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NightDisplayCustomStartTimePreferenceController.java"


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 33
    new-instance v0, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {v0, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    .line 34
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public final updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 43
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayCustomStartTimePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 45
    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
