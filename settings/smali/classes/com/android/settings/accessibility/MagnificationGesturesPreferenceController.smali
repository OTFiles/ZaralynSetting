.class public Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationGesturesPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    .line 31
    return-void
.end method

.method static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const-string v0, "preference_key"

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "title_res"

    const v1, 0x7f120069

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v0, "summary_res"

    const v1, 0x7f120070

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v0, "video_resource"

    const v1, 0x7f110001

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "resId":I
    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    if-eqz v1, :cond_0

    .line 75
    const v0, 0x7f12006e

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v1

    .line 78
    .local v1, "enabled":Z
    if-eqz v1, :cond_1

    const v2, 0x7f120055

    goto :goto_0

    .line 79
    :cond_1
    const v2, 0x7f120054

    :goto_0
    move v0, v2

    .line 81
    .end local v1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 54
    const-string v1, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    const-string v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_gestures_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setIsFromSUW(Z)V
    .locals 0
    .param p1, "fromSUW"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    .line 47
    return-void
.end method
