.class public Lcom/android/setupwizardlib/items/ItemGroup;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDirty:Z

.field private mHierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 108
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 108
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 117
    return-void
.end method

.method private static binarySearch(Landroid/util/SparseIntArray;I)I
    .locals 6
    .param p0, "array"    # Landroid/util/SparseIntArray;
    .param p1, "value"    # I

    .line 39
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 40
    .local v0, "size":I
    const/4 v1, 0x0

    .line 41
    .local v1, "lo":I
    add-int/lit8 v2, v0, -0x1

    .line 43
    .local v2, "hi":I
    :goto_0
    if-gt v1, v2, :cond_2

    .line 44
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 45
    .local v3, "mid":I
    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 47
    .local v4, "midVal":I
    if-ge v4, p1, :cond_0

    .line 48
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 49
    :cond_0
    if-le v4, p1, :cond_1

    .line 50
    add-int/lit8 v2, v3, -0x1

    .line 54
    .end local v3
    .end local v4
    :goto_1
    goto :goto_0

    .line 52
    .restart local v3
    .restart local v4
    :cond_1
    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5

    .line 57
    .end local v3
    .end local v4
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3
.end method

.method private getChildPosition(I)I
    .locals 5
    .param p1, "childIndex"    # I

    .line 206
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    .line 207
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 208
    const/4 v1, -0x1

    .line 209
    .local v1, "childPos":I
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 210
    .local v2, "childCount":I
    move v3, v1

    move v1, p1

    .local v1, "i":I
    .local v3, "childPos":I
    :goto_0
    if-gez v3, :cond_0

    if-ge v1, v2, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1
    :cond_0
    if-gez v3, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getCount()I

    move-result v3

    .line 221
    :cond_1
    return v3

    .line 223
    .end local v2
    .end local v3
    :cond_2
    return v0
.end method

.method private getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I
    .locals 1
    .param p1, "child"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 202
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(I)I

    move-result v0

    return v0
.end method

.method private getItemIndex(I)I
    .locals 3
    .param p1, "position"    # I

    .line 310
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    .line 311
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    if-ge p1, v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->binarySearch(Landroid/util/SparseIntArray;I)I

    move-result v0

    .line 315
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 318
    return v0

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot have item start index < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 65
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 67
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 68
    return v1

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private updateDataIfNeeded()V
    .locals 5

    .line 290
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    if-eqz v0, :cond_2

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 292
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 293
    move v1, v0

    .local v1, "itemIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 295
    .local v2, "item":Lcom/android/setupwizardlib/items/ItemHierarchy;
    invoke-interface {v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    :cond_0
    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-interface {v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    .line 293
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1
    :cond_1
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 302
    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 2
    .param p1, "child"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 125
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    .line 128
    invoke-interface {p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    .line 129
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeInserted(II)V

    .line 132
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    .line 177
    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 4
    .param p1, "position"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getItemIndex(I)I

    move-result v0

    .line 183
    .local v0, "itemIndex":I
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 184
    .local v1, "item":Lcom/android/setupwizardlib/items/ItemHierarchy;
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sub-int v2, p1, v2

    .line 185
    .local v2, "subpos":I
    invoke-interface {v1, v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v3

    return-object v3
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 4
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 229
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    .line 230
    .local v0, "childPosition":I
    if-ltz v0, :cond_0

    .line 231
    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 233
    :cond_0
    const-string v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 4
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    .line 240
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    .line 241
    .local v0, "childPosition":I
    if-ltz v0, :cond_0

    .line 242
    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 244
    :cond_0
    const-string v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void
.end method
