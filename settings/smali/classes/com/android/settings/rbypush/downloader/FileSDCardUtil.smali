.class public Lcom/android/settings/rbypush/downloader/FileSDCardUtil;
.super Ljava/lang/Object;
.source "FileSDCardUtil.java"


# static fields
.field public static fileSDCardUtil:Lcom/android/settings/rbypush/downloader/FileSDCardUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/rbypush/downloader/FileSDCardUtil;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->fileSDCardUtil:Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->fileSDCardUtil:Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    invoke-direct {v1}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;-><init>()V

    sput-object v1, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->fileSDCardUtil:Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->fileSDCardUtil:Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    return-object v0
.end method


# virtual methods
.method public getPathFromContentUri(Landroid/net/Uri;Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .line 308
    if-nez p1, :cond_0

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_0
    const-string v0, "_data"

    const-string v1, "_display_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 315
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 317
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "fileName":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 321
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    move-object v2, v6

    .line 322
    .local v2, "strings":[Ljava/lang/String;
    return-object v2
.end method

.method public getPublickDiskFileDirAndroid9(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileDir"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "filePath":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
