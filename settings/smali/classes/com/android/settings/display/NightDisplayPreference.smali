.class public Lcom/android/settings/display/NightDisplayPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "NightDisplayPreference.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 35
    new-instance v0, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {v0, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    .line 36
    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeTimeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 59
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 60
    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 47
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .line 64
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 65
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 75
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 70
    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 55
    return-void
.end method
