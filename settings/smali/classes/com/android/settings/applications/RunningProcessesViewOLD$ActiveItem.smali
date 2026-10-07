.class public Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesViewOLD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesViewOLD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

.field mItem:Lcom/android/settings/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "uptimeView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of v1, v1, Lcom/android/settings/applications/RunningState$ServiceItem;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    iget-object v0, v1, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->size:Landroid/widget/TextView;

    goto :goto_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 116
    .local v1, "size":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iput-object v1, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_3

    .line 123
    iget-boolean v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mSetBackground:Z

    if-nez v3, :cond_4

    .line 124
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mSetBackground:Z

    .line 125
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v3, :cond_4

    .line 130
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;

    iget-object v0, v3, Lcom/android/settings/applications/RunningProcessesViewOLD$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 134
    .end local v1
    :cond_4
    :goto_1
    if-eqz v0, :cond_9

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mSetBackground:Z

    .line 136
    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mFirstRunTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 139
    nop

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 139
    invoke-static {p2, v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 142
    :cond_5
    const/4 v3, 0x0

    .line 143
    .local v3, "isService":Z
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of v4, v4, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v4, :cond_7

    .line 144
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesViewOLD$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    move v1, v2

    nop

    :cond_6
    move v3, v1

    .line 146
    :cond_7
    if-eqz v3, :cond_8

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120cb9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 150
    :cond_8
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v3
    :cond_9
    :goto_2
    return-void
.end method
