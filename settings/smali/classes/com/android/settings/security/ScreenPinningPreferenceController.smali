.class public Lcom/android/settings/security/ScreenPinningPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ScreenPinningPreferenceController.java"


# static fields
.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    const-string v0, "screen_pinning_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e47

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e45

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0
.end method
