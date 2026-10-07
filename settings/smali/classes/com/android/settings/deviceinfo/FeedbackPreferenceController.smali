.class public Lcom/android/settings/deviceinfo/FeedbackPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FeedbackPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final mHost:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 2
    .param p1, "host"    # Landroid/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mHost:Landroid/app/Fragment;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "device_feedback"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_feedback"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    return v1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mHost:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/FeedbackPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method
