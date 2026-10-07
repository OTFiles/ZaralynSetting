.class Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    .line 71
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;"
    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 75
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 80
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeChanged(II)V

    .line 84
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 88
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeInserted(II)V

    .line 92
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 96
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 98
    add-int/lit8 p2, p2, 0x1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    add-int v2, p1, v0

    add-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemMoved(II)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0
    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 108
    .local p0, "this":Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;, "Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;"
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->notifyItemRangeRemoved(II)V

    .line 112
    return-void
.end method
