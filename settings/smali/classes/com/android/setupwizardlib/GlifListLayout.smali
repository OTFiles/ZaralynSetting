.class public Lcom/android/setupwizardlib/GlifListLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifListLayout.java"


# instance fields
.field private mListMixin:Lcom/android/setupwizardlib/template/ListMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifListLayout;-><init>(Landroid/content/Context;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
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

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    new-instance v0, Lcom/android/setupwizardlib/template/ListMixin;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/setupwizardlib/template/ListMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    .line 74
    const-class v0, Lcom/android/setupwizardlib/template/ListMixin;

    iget-object v1, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifListLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 76
    const-class v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifListLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 77
    .local v0, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    new-instance v1, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;

    .line 78
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ListView;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .line 97
    if-nez p1, :cond_0

    .line 98
    const p1, 0x102000a

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .line 89
    if-nez p2, :cond_0

    .line 90
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_list_template:I

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

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

    .line 83
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/GlifLayout;->onLayout(ZIIII)V

    .line 84
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->onLayout()V

    .line 85
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 108
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .param p1, "inset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    .line 121
    return-void
.end method
