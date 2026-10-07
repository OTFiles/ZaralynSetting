.class Lcom/android/music/LocalMusicPicker$2;
.super Landroid/content/BroadcastReceiver;
.source "LocalMusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/LocalMusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/LocalMusicPicker;


# direct methods
.method constructor <init>(Lcom/android/music/LocalMusicPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/music/LocalMusicPicker;

    .line 801
    iput-object p1, p0, Lcom/android/music/LocalMusicPicker$2;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 804
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 807
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/music/LocalMusicPicker$2;->this$0:Lcom/android/music/LocalMusicPicker;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/LocalMusicPicker$2;->this$0:Lcom/android/music/LocalMusicPicker;

    invoke-static {v4}, Lcom/android/music/LocalMusicPicker;->access$700(Lcom/android/music/LocalMusicPicker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/music/LocalMusicPicker;->doQuery(ZLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 811
    return-void
.end method
