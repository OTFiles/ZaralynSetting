.class public Lcom/android/settings/display/NightDisplayFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NightDisplayFooterPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayFooterPreferenceController;->mContext:Landroid/content/Context;

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

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 39
    const v0, 0x7f120935

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 40
    return-void
.end method
