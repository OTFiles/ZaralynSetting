.class public Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CVH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "TCVH;>;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "TCVH;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<TCVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    new-instance v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;-><init>(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 116
    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 117
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 118
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->setHasStableIds(Z)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    .line 63
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 174
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 175
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    :cond_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 183
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    add-int/lit8 p1, p1, -0x1

    .line 186
    :cond_0
    if-gez p1, :cond_1

    .line 187
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 163
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 164
    add-int/lit8 p1, p1, -0x1

    .line 166
    :cond_0
    if-gez p1, :cond_1

    .line 167
    const v0, 0x7fffffff

    return v0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "TCVH;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 143
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    add-int/lit8 p2, p2, -0x1

    .line 147
    :cond_0
    instance-of v0, p1, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 155
    .local v0, "mHeaderParent":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    .end local v0
    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeaderViewHolder cannot find mHeader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 159
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 128
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 129
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v2, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;

    invoke-direct {v2, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 136
    .end local v0
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;

    .line 193
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter<TCVH;>;"
    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    .line 194
    return-void
.end method
