.class public Lcom/android/settings/display/AutoBrightnessPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoBrightnessPreferenceController.java"


# instance fields
.field private final DEFAULT_VALUE:I

.field private final SYSTEM_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    const-string v0, "screen_brightness_mode"

    iput-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->SYSTEM_KEY:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->DEFAULT_VALUE:I

    .line 40
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x2

    .line 58
    :goto_0
    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/DisplaySettings;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    .line 74
    const v4, 0x7f120555

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "screen_brightness_mode"

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v4, v1

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 76
    return-object v1
.end method

.method public isChecked()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isSliceable()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_brightness"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 50
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    .line 51
    nop

    .line 50
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    const/4 v0, 0x1

    return v0
.end method
