.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseTimeZoneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final mIconTextView:Landroid/widget/TextView;

.field private mItem:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mSummaryFrame:Landroid/view/View;

.field final mSummaryView:Landroid/widget/TextView;

.field final mTimeView:Landroid/widget/TextView;

.field final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;, "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder<TT;>;"
    .local p2, "onListItemClickListener":Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;, "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 193
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f0a0418

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mSummaryFrame:Landroid/view/View;

    .line 195
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0a01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mIconTextView:Landroid/widget/TextView;

    .line 197
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mSummaryView:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0a010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mTimeView:Landroid/widget/TextView;

    .line 199
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    .line 200
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 212
    .local p0, "this":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;, "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder<TT;>;"
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mOnListItemClickListener:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mItem:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    invoke-interface {v0, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;->onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;)V

    .line 213
    return-void
.end method

.method public setAdapterItem(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;, "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder<TT;>;"
    .local p1, "item":Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;, "TT;"
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mItem:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;

    .line 204
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mIconTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getIconText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mSummaryView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->mTimeView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method
