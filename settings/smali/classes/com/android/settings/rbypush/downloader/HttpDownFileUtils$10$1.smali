.class Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10$1;
.super Ljava/lang/Object;
.source "HttpDownFileUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->apply(Ljava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;


# direct methods
.method constructor <init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;

    .line 663
    iput-object p1, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10$1;->this$1:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 666
    iget-object v0, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10$1;->this$1:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;

    iget-object v0, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-static {v0}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->access$000(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PATH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method
