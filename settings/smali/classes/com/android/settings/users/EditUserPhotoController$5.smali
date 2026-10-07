.class Lcom/android/settings/users/EditUserPhotoController$5;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserPhotoController;->copyAndCropPhoto(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic val$pictureUri:Landroid/net/Uri;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 235
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/EditUserPhotoController;

    .line 228
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController$5;->val$pictureUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 228
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 231
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$300(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController$5;->val$pictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 233
    .local v2, "in":Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v3}, Lcom/android/settings/users/EditUserPhotoController;->access$400(Lcom/android/settings/users/EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 232
    .local v3, "out":Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    .line 234
    :try_start_2
    invoke-static {v2, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 235
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-static {v1, v3}, Lcom/android/settings/users/EditUserPhotoController$5;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-static {v1, v2}, Lcom/android/settings/users/EditUserPhotoController$5;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 237
    .end local v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    goto :goto_2

    .line 235
    .restart local v2
    .restart local v3
    :catchall_0
    move-exception v4

    move-object v5, v1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v4

    :try_start_5
    throw v4

    .line 235
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_0
    if-eqz v3, :cond_2

    :try_start_6
    invoke-static {v5, v3}, Lcom/android/settings/users/EditUserPhotoController$5;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v4

    .end local v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    move-object v4, v1

    goto :goto_1

    .line 232
    :catch_1
    move-exception v3

    :try_start_7
    throw v3

    .line 235
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v2, :cond_3

    :try_start_8
    invoke-static {v4, v2}, Lcom/android/settings/users/EditUserPhotoController$5;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v3

    .end local v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v2

    .line 236
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "EditUserPhotoController"

    const-string v4, "Failed to copy photo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v2
    :goto_2
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .line 243
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$500(Lcom/android/settings/users/EditUserPhotoController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->access$600(Lcom/android/settings/users/EditUserPhotoController;)V

    .line 245
    return-void
.end method
