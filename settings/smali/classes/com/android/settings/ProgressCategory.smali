.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 37
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 42
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 48
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 53
    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 63
    const v0, 0x7f0a01da

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "iconcontainer":Landroid/view/View;
    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_0
    const v2, 0x7f0a0389

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "progressBar":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 71
    .local v3, "noDeviceFound":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v6, :cond_3

    move v1, v5

    nop

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v1, :cond_6

    if-nez v3, :cond_4

    goto :goto_2

    .line 79
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v1, :cond_7

    .line 80
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-nez v1, :cond_5

    .line 81
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    .line 82
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f0d012c

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget v6, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 87
    iput-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3

    .line 74
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v1, :cond_7

    .line 75
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 76
    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 90
    :cond_7
    :goto_3
    return-void
.end method

.method public setEmptyTextRes(I)V
    .locals 0
    .param p1, "emptyTextRes"    # I

    .line 57
    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    .line 58
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 96
    return-void
.end method
