.class final Lcom/android/music/LocalMusicPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LocalMusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/LocalMusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/LocalMusicPicker;


# direct methods
.method public constructor <init>(Lcom/android/music/LocalMusicPicker;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 517
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    .line 518
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 519
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 523
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$500(Lcom/android/music/LocalMusicPicker;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v1}, Lcom/android/music/LocalMusicPicker;->access$000(Lcom/android/music/LocalMusicPicker;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {v0}, Lcom/android/music/LocalMusicPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$800(Lcom/android/music/LocalMusicPicker;)Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 528
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$800(Lcom/android/music/LocalMusicPicker;)Lcom/android/music/LocalMusicPicker$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/LocalMusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 533
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {v0, v2}, Lcom/android/music/LocalMusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$900(Lcom/android/music/LocalMusicPicker;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {v0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v1}, Lcom/android/music/LocalMusicPicker;->access$900(Lcom/android/music/LocalMusicPicker;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 538
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0}, Lcom/android/music/LocalMusicPicker;->access$1000(Lcom/android/music/LocalMusicPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-virtual {v0}, Lcom/android/music/LocalMusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v0, v2}, Lcom/android/music/LocalMusicPicker;->access$1002(Lcom/android/music/LocalMusicPicker;Z)Z

    .line 542
    iget-object v0, p0, Lcom/android/music/LocalMusicPicker$QueryHandler;->this$0:Lcom/android/music/LocalMusicPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/LocalMusicPicker;->access$902(Lcom/android/music/LocalMusicPicker;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    goto :goto_1

    .line 545
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_3
    :goto_1
    return-void
.end method
