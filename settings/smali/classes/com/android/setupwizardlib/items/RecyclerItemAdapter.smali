.class public Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;,
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/setupwizardlib/items/ItemViewHolder;",
        ">;",
        "Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;"
    }
.end annotation


# instance fields
.field private final mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

.field private mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1
    .param p1, "hierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 67
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;)Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    .line 37
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 1
    .param p1, "position"    # I

    .line 76
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 82
    .local v0, "mItem":Lcom/android/setupwizardlib/items/IItem;
    instance-of v1, v0, Lcom/android/setupwizardlib/items/AbstractItem;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/items/AbstractItem;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/items/AbstractItem;->getId()I

    move-result v1

    .line 84
    .local v1, "id":I
    if-lez v1, :cond_0

    int-to-long v2, v1

    nop

    :cond_0
    return-wide v2

    .line 86
    .end local v1
    :cond_1
    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 156
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v1

    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/setupwizardlib/items/ItemViewHolder;
    .param p2, "position"    # I

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 146
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setEnabled(Z)V

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setItem(Lcom/android/setupwizardlib/items/IItem;)V

    .line 148
    iget-object v1, p1, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/setupwizardlib/items/IItem;->onBindView(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "view":Landroid/view/View;
    new-instance v3, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-direct {v3, v2}, Lcom/android/setupwizardlib/items/ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    .local v3, "viewHolder":Lcom/android/setupwizardlib/items/ItemViewHolder;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 102
    .local v4, "viewTag":Ljava/lang/Object;
    const-string v5, "noBackground"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter:[I

    .line 104
    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 105
    .local v5, "typedArray":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_selectableItemBackground:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 107
    .local v6, "selectableItemBackground":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_0

    .line 108
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_selectableItemBackground:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 112
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 113
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 114
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_colorBackground:I

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 118
    :cond_1
    if-eqz v6, :cond_3

    if-nez v7, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v8, v1

    const/4 v1, 0x1

    aput-object v6, v8, v1

    move-object v1, v8

    .line 124
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v8, v1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v1
    goto :goto_1

    .line 119
    :cond_3
    :goto_0
    const-string v1, "RecyclerItemAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " background="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    .end local v5
    .end local v6
    .end local v7
    :cond_4
    new-instance v1, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;

    invoke-direct {v1, p0, v3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;-><init>(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;Lcom/android/setupwizardlib/items/ItemViewHolder;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object v3
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 166
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeChanged(II)V

    .line 167
    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeInserted(II)V

    .line 172
    return-void
.end method
