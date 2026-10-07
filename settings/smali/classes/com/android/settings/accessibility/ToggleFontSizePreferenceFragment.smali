.class public Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# instance fields
.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 6
    .param p0, "val"    # F
    .param p1, "indices"    # [Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 92
    .local v0, "lastVal":F
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "lastVal":F
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 93
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 94
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p0, v4

    if-gez v4, :cond_0

    .line 95
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 97
    :cond_0
    move v2, v3

    .line 92
    .end local v3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected commit()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "font_scale"

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    iget v3, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 74
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "origConfig"    # Landroid/content/res/Configuration;
    .param p2, "index"    # I

    .line 61
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 62
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 63
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 78
    const v0, 0x7f1206c6

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 83
    const/16 v0, 0x154

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0d00b5

    iput v0, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mActivityLayoutResId:I

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d00b6

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mPreviewSampleResIds:[I

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 46
    .local v2, "resolver":Landroid/content/ContentResolver;
    const v3, 0x7f030050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 47
    const v3, 0x7f030051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "strEntryValues":[Ljava/lang/String;
    const-string v4, "font_scale"

    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 50
    .local v4, "currentScale":F
    invoke-static {v4, v3}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mInitialIndex:I

    .line 51
    array-length v5, v3

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    .line 52
    nop

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 53
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v5, 0x7f120e8e

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 56
    return-void
.end method
