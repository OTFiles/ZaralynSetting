.class public Lcom/android/settings/widget/AppPreference;
.super Landroid/support/v7/preference/Preference;
.source "AppPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/AppPreference;->setLayoutResource(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x7f0d0114

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/AppPreference;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 52
    const v0, 0x7f0a0417

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "summarycontainer":Landroid/view/View;
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_1
    const v3, 0x102000d

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 57
    .local v3, "progress":Landroid/widget/ProgressBar;
    if-eqz v3, :cond_3

    .line 58
    iget-boolean v4, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    if-eqz v4, :cond_2

    .line 59
    iget v2, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 60
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    :cond_3
    :goto_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 44
    iput p1, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->notifyChanged()V

    .line 47
    return-void
.end method
