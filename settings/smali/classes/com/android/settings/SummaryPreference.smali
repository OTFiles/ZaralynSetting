.class public Lcom/android/settings/SummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "SummaryPreference.java"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mChartEnabled:Z

.field private mEndLabel:Ljava/lang/String;

.field private mLeftRatio:F

.field private mMiddleRatio:F

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;

.field private mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    .line 42
    const v0, 0x7f0d01a4

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryPreference;->setLayoutResource(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 85
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 87
    .local v0, "colorBar":Landroid/widget/ProgressBar;
    iget-boolean v1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget v1, p0, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 90
    .local v1, "progress":I
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    iget v5, p0, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 92
    .end local v1
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    const v4, 0x7f0a0221

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    :cond_1
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_1
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120dd2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 46
    iget-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    .line 50
    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    .line 72
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "middle"    # F
    .param p3, "right"    # F

    .line 75
    iput p1, p0, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    .line 76
    iput p2, p0, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    .line 77
    iput p3, p0, Lcom/android/settings/SummaryPreference;->mRightRatio:F

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    .line 79
    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 4
    .param p1, "units"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120dd2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method
