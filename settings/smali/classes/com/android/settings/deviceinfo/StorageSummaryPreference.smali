.class public Lcom/android/settings/deviceinfo/StorageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 36
    const v0, 0x7f0d01b7

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 48
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 49
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    iget v1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    const/high16 v1, 0x40e00000

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setScaleY(F)V

    goto :goto_0

    .line 54
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    :goto_0
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "summary":Landroid/widget/TextView;
    const-string v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 61
    return-void
.end method

.method public setPercent(JJ)V
    .locals 3
    .param p1, "usedBytes"    # J
    .param p3, "totalBytes"    # J

    .line 42
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    .line 43
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    .line 42
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 44
    return-void
.end method
