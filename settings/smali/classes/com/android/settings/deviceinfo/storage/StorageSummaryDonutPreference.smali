.class public Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryDonutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$BoldLinkSpan;
    }
.end annotation


# instance fields
.field private mBtnClickTimes:I

.field private mLastClickEventTime:J

.field private mPercent:D

.field mmPwdVertifyChangeListener:Ljava/beans/PropertyChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mLastClickEventTime:J

    .line 103
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference$1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mmPwdVertifyChangeListener:Ljava/beans/PropertyChangeListener;

    .line 73
    const v0, 0x7f0d01b8

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setLayoutResource(I)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->setEnabled(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 88
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 90
    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/DonutView;

    .line 91
    .local v0, "donut":Lcom/android/settings/widget/DonutView;
    if-eqz v0, :cond_0

    .line 92
    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/DonutView;->setPercentage(D)V

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/DonutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    const v1, 0x7f0a012f

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    .local v1, "deletionHelperButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 125
    if-eqz p1, :cond_0

    const v0, 0x7f0a012f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a014f

    if-ne v0, v1, :cond_4

    .line 136
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mLastClickEventTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mLastClickEventTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mLastClickEventTime:J

    .line 141
    iget v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mBtnClickTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mBtnClickTimes:I

    goto :goto_1

    .line 137
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mLastClickEventTime:J

    .line 138
    iput v1, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mBtnClickTimes:I

    .line 143
    :goto_1
    iget v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mBtnClickTimes:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_3

    .line 144
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mmPwdVertifyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 145
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mmPwdVertifyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/core/SubSettingLauncher;->findActivity(Landroid/content/Context;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    .line 147
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/SettingsApp;->showPasswordDialog(Landroid/app/Activity;Z)V

    .line 149
    .end local v0
    :cond_3
    const-string v0, ""

    const-string v1, "========divhee========donut========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    :goto_2
    return-void
.end method

.method public setPercent(JJ)V
    .locals 4
    .param p1, "usedBytes"    # J
    .param p3, "totalBytes"    # J

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    long-to-double v0, p1

    long-to-double v2, p3

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSummaryDonutPreference;->mPercent:D

    .line 83
    return-void
.end method
