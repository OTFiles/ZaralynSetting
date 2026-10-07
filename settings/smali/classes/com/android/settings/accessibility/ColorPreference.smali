.class public Lcom/android/settings/accessibility/ColorPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

.field private mPreviewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->setDialogLayoutResource(I)V

    .line 44
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ColorPreference;->setListItemLayoutResource(I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "index"    # I

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ColorPreference;->getValueAt(I)I

    move-result v1

    .line 76
    .local v1, "value":I
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 77
    .local v2, "r":I
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 78
    .local v3, "g":I
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 79
    .local v4, "b":I
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1203aa

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getValueAt(I)I

    move-result v0

    .line 116
    .local v0, "argb":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 118
    .local v1, "alpha":I
    const v2, 0x7f0a00ef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 119
    .local v2, "swatch":Landroid/widget/ImageView;
    const/16 v3, 0xff

    if-ge v1, v3, :cond_0

    .line 120
    const v3, 0x7f0802ef

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 122
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 126
    .local v3, "foreground":Landroid/graphics/drawable/Drawable;
    instance-of v4, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_1

    .line 127
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    .line 129
    :cond_1
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 133
    .local v4, "title":Ljava/lang/CharSequence;
    if-eqz v4, :cond_2

    .line 134
    const v5, 0x7f0a0414

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, "summary":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .end local v5
    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz v0, :cond_4

    .line 87
    const v0, 0x7f0a00ee

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, "previewImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 89
    .local v1, "argb":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 90
    const v2, 0x7f0802ef

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    iget-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 103
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000

    goto :goto_3

    :cond_3
    const v3, 0x3e4ccccd

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    .end local v0
    .end local v1
    .end local v2
    :cond_4
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
