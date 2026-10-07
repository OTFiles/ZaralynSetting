.class public Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "NbWhiteAppListDividerItem.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private iDividerHeight:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->iDividerHeight:I

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->setOrientation(I)V

    .line 41
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 42
    iput v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->iDividerHeight:I

    .line 43
    return-void
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 82
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 83
    .local v0, "top":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 85
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 86
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 87
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 88
    .local v4, "child":Landroid/view/View;
    nop

    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 90
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 91
    .local v6, "left":I
    iget v7, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->iDividerHeight:I

    add-int/2addr v7, v6

    .line 92
    .local v7, "right":I
    iget-object v8, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v8, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v3
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 65
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 66
    .local v0, "left":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 68
    .local v1, "right":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 69
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 70
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, "child":Landroid/view/View;
    new-instance v5, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v5, "v":Landroid/support/v7/widget/RecyclerView;
    nop

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 74
    .local v6, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 75
    .local v7, "top":I
    iget v8, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->iDividerHeight:I

    add-int/2addr v8, v7

    .line 76
    .local v8, "bottom":I
    iget-object v9, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v0, v7, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v9, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v3
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 99
    iget v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 100
    iget v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->iDividerHeight:I

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .line 54
    const-string v0, "recyclerview - itemdecoration"

    const-string v1, "onDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 46
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListDividerItem;->mOrientation:I

    .line 50
    return-void
.end method
