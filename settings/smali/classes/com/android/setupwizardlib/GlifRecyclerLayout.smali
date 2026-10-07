.class public Lcom/android/setupwizardlib/GlifRecyclerLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifRecyclerLayout.java"


# instance fields
.field protected mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
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

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p2, p3}, Lcom/android/setupwizardlib/template/RecyclerMixin;->parseAttributes(Landroid/util/AttributeSet;I)V

    .line 69
    const-class v0, Lcom/android/setupwizardlib/template/RecyclerMixin;

    iget-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 71
    const-class v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 72
    .local v0, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    .line 73
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/support/v7/widget/RecyclerView;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .line 103
    if-nez p1, :cond_0

    .line 104
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public findManagedViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "view":Landroid/view/View;, "TT;"
    if-eqz v1, :cond_0

    .line 117
    return-object v1

    .line 120
    .end local v1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .line 84
    if-nez p2, :cond_0

    .line 85
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_recycler_template:I

    .line 87
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

    .line 78
    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/GlifLayout;->onLayout(ZIIII)V

    .line 79
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->onLayout()V

    .line 80
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 3

    .line 92
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "recyclerView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/android/setupwizardlib/template/RecyclerMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GlifRecyclerLayout should use a template with recycler view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 142
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .param p1, "inset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInset(I)V

    .line 157
    return-void
.end method

.method public setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V
    .locals 1
    .param p1, "decoration"    # Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 127
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 128
    return-void
.end method
