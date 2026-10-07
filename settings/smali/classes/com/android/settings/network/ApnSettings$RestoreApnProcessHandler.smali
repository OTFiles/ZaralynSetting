.class Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .line 701
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 702
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 703
    iput-object p3, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 704
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 708
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$900(Lcom/android/settings/network/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 711
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$1000()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$1100(Lcom/android/settings/network/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 713
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    .end local v0
    :goto_0
    return-void
.end method
