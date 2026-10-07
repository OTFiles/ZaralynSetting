.class public Lcom/android/settings/display/DensityPreference;
.super Lcom/android/settingslib/CustomEditTextPreference;
.source "DensityPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private getCurrentSwDp()I
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 53
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 54
    .local v2, "density":F
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 55
    .local v3, "minDimensionPx":I
    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v4, v4

    return v4
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .line 44
    invoke-super {p0}, Lcom/android/settingslib/CustomEditTextPreference;->onAttached()V

    .line 45
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 46
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->getCurrentSwDp()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "dpValue":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v3, 0x7f120502

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/display/DensityPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 62
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 64
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->getCurrentSwDp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .line 73
    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 77
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x140

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 78
    .local v2, "newSwDp":I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 79
    .local v3, "minDimensionPx":I
    const/16 v4, 0xa0

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    .line 80
    .local v4, "newDensity":I
    const/16 v5, 0x78

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 81
    .local v5, "densityDpi":I
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    .line 85
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DensityPreference"

    const-string v2, "Couldn\'t save density"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0
    :cond_0
    :goto_0
    return-void
.end method
