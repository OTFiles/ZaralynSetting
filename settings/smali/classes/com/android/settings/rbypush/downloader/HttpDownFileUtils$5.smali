.class Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;
.super Ljava/lang/Object;
.source "HttpDownFileUtils.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downUnKnowFileFromService(Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

.field final synthetic val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;


# direct methods
.method constructor <init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    .line 414
    iput-object p1, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;->this$0:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    iput-object p2, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 437
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 432
    return-void
.end method

.method public onNext(Ljava/io/File;)V
    .locals 17
    .param p1, "file"    # Ljava/io/File;

    move-object/from16 v0, p0

    .line 422
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/settings/rbypush/downloader/OnFileDownListener;->onFileDownStatus(ILjava/lang/Object;IJJ)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v9, v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;->val$onFileDownListener:Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-interface/range {v9 .. v16}, Lcom/android/settings/rbypush/downloader/OnFileDownListener;->onFileDownStatus(ILjava/lang/Object;IJJ)V

    .line 427
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 414
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;->onNext(Ljava/io/File;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 418
    return-void
.end method
