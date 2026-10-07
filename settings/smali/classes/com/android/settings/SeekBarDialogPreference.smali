.class public Lcom/android/settings/SeekBarDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "SeekBarDialogPreference.java"


# instance fields
.field private final mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x7f0d0128

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setDialogLayoutResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SeekBarDialogPreference;->createActionButtons()V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "dialogView"    # Landroid/view/View;

    .line 70
    const v0, 0x7f0a03b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .line 53
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 54
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 55
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 61
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :goto_0
    return-void
.end method
