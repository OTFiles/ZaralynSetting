.class public Lcom/android/setupwizardlib/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mColor:Landroid/content/res/ColorStateList;

.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/setupwizardlib/TemplateLayout;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 45
    return-void
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 84
    .local v0, "progressBar":Landroid/view/View;
    if-nez v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_progress_stub:I

    .line 86
    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 87
    .local v1, "progressBarStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 92
    .end local v1
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public isShown()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 112
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;->mColor:Landroid/content/res/ColorStateList;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 115
    .local v0, "bar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    if-eqz p1, :cond_1

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    .end local v0
    :cond_1
    return-void
.end method

.method public setShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 62
    if-eqz p1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 64
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .end local v0
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 69
    .restart local v0
    if-eqz v0, :cond_2

    .line 70
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .end local v0
    :cond_2
    :goto_0
    return-void
.end method
