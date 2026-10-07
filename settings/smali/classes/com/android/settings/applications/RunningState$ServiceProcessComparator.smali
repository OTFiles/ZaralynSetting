.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningState;

    .line 731
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I
    .locals 6
    .param p1, "object1"    # Lcom/android/settings/applications/RunningState$ProcessItem;
    .param p2, "object2"    # Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 733
    iget v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    .line 734
    iget v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, v1, :cond_0

    return v3

    .line 735
    :cond_0
    iget v0, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, v1, :cond_1

    return v2

    .line 736
    :cond_1
    iget v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    if-ge v0, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2

    .line 738
    :cond_3
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v1, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v0, v1, :cond_5

    .line 740
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eqz v0, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    .line 742
    :cond_5
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v1, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v0, v1, :cond_7

    .line 744
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v3

    :goto_0
    return v2

    .line 746
    :cond_7
    iget-wide v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 749
    iget-wide v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    move v2, v3

    nop

    :cond_8
    return v2

    .line 751
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 731
    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I

    move-result p1

    return p1
.end method
