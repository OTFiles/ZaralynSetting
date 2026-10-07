.class public Lcom/android/settings/BaseTitleActivity;
.super Landroid/app/Activity;
.source "BaseTitleActivity.java"


# instance fields
.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 27
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 29
    .local v1, "lcdwidth":I
    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 30
    .local v2, "leftmarginSmall":I
    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07018f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 32
    .local v3, "leftmarginBigger":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0029

    const v6, 0x7f0a0016

    invoke-virtual {p0, v6}, Lcom/android/settings/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 33
    .local v4, "actionbarLayout":Landroid/view/View;
    const v5, 0x7f0a024d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 34
    const v5, 0x7f0a024e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 35
    const v5, 0x7f0a0250

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 36
    .local v5, "child":Landroid/view/View;
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    .line 37
    iget-object v6, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120cc3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v5, v2, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 40
    .local v6, "vglp":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, v1

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const v8, 0x7f0a024f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 44
    int-to-float v8, v1

    const v9, 0x3f266666    # 0.65f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 49
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 51
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "titleId"    # I

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/BaseTitleActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/BaseTitleActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void
.end method
