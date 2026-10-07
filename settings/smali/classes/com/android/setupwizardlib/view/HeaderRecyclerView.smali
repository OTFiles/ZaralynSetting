.class public Lcom/android/setupwizardlib/view/HeaderRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;,
        Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private mHeader:Landroid/view/View;

.field private mHeaderRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->init(Landroid/util/AttributeSet;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 210
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->init(Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 215
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->init(Landroid/util/AttributeSet;I)V

    .line 217
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 220
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwHeaderRecyclerView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwHeaderRecyclerView_suwHeader:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeaderRes:I

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    return-void
.end method


# virtual methods
.method public getHeader()Landroid/view/View;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 228
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 232
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 233
    .local v0, "numberOfHeaders":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 234
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 235
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 236
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 238
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 269
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 271
    .local v0, "headerAdapter":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->setHeader(Landroid/view/View;)V

    .line 272
    move-object p1, v0

    .line 274
    .end local v0
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 275
    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;

    .line 252
    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    .line 253
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 257
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 258
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeaderRes:I

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeaderRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->mHeader:Landroid/view/View;

    .line 264
    .end local v0
    :cond_0
    return-void
.end method
