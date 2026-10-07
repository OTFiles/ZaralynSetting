.class public Lcom/android/setupwizardlib/SetupWizardListLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardListLayout.java"


# instance fields
.field private mListMixin:Lcom/android/setupwizardlib/template/ListMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;-><init>(Landroid/content/Context;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    new-instance v0, Lcom/android/setupwizardlib/template/ListMixin;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/setupwizardlib/template/ListMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    .line 66
    const-class v0, Lcom/android/setupwizardlib/template/ListMixin;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardListLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 68
    const-class v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 69
    .local v0, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    new-instance v1, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;

    .line 70
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ListView;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .line 83
    if-nez p1, :cond_0

    .line 84
    const p1, 0x102000a

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .line 75
    if-nez p2, :cond_0

    .line 76
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_list_template:I

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 91
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    .line 92
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->onLayout()V

    .line 93
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 100
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .param p1, "inset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    .line 121
    return-void
.end method
