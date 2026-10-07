.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "PresetPreference.java"


# instance fields
.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setDialogLayoutResource(I)V

    .line 38
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PresetPreference;->setListItemLayoutResource(I)V

    .line 40
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 52
    const v0, 0x7f0a0314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "previewViewport":Landroid/view/View;
    const v1, 0x7f0a0311

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    .line 54
    .local v1, "previewText":Lcom/android/internal/widget/SubtitleView;
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->getValueAt(I)I

    move-result v2

    .line 55
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3, v1, v0, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .local v3, "density":F
    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/PresetPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 62
    .local v4, "title":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 63
    const v5, 0x7f0a0414

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 64
    .local v5, "summary":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v5
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 47
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

    .line 46
    :goto_1
    return v0
.end method
