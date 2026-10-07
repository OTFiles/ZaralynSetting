.class Lcom/android/settings/localepicker/LocaleDragCell;
.super Landroid/widget/RelativeLayout;
.source "LocaleDragCell.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDragHandle:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mLocalized:Landroid/widget/TextView;

.field private mMiniLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDragHandle()Landroid/widget/ImageView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0214

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a027f

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    .line 49
    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    .line 50
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 76
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "labelText"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 96
    return-void
.end method

.method public setLocalized(Z)V
    .locals 2
    .param p1, "localized"    # Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLocalized:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 101
    return-void
.end method

.method public setMiniLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "miniLabelText"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 88
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 3
    .param p1, "showCheckbox"    # Z

    .line 64
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 73
    return-void
.end method

.method public setShowHandle(Z)V
    .locals 2
    .param p1, "showHandle"    # Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mDragHandle:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 60
    return-void
.end method

.method public setShowMiniLabel(Z)V
    .locals 2
    .param p1, "showMiniLabel"    # Z

    .line 80
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragCell;->mMiniLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->invalidate()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragCell;->requestLayout()V

    .line 83
    return-void
.end method
