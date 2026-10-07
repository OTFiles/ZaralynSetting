.class public Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;
.super Ljava/lang/Object;
.source "HttpDownFileUtils.java"


# static fields
.field private static downFileUtils:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    .line 43
    iget-object v0, p0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private downMusicVideoPicFromService(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 8
    .param p1, "downPathUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inserType"    # Ljava/lang/String;
    .param p4, "onFileDownListener"    # Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    .line 576
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v7, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$10;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 686
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$9;

    invoke-direct {v1, p0, p4}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$9;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    .line 687
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 712
    return-void
.end method

.method private downUnKnowFileFromService(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 2
    .param p1, "downPathUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inserType"    # Ljava/lang/String;
    .param p4, "onFileDownListener"    # Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    .line 450
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$8;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Ljava/lang/String;Landroid/content/Context;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 537
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$7;

    invoke-direct {v1, p0, p4}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$7;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    .line 538
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 564
    :cond_0
    return-void
.end method

.method private downUnKnowFileFromService(Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 2
    .param p1, "downPathUrl"    # Ljava/lang/String;
    .param p2, "onFileDownListener"    # Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    .line 350
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$6;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 414
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils$5;-><init>(Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 439
    return-void
.end method

.method public static getInstance()Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;
    .locals 2

    .line 51
    sget-object v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downFileUtils:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downFileUtils:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    invoke-direct {v1}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;-><init>()V

    sput-object v1, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downFileUtils:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downFileUtils:Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;

    return-object v0
.end method


# virtual methods
.method public downFileFromServiceToPublicDir(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V
    .locals 2
    .param p1, "downPathUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inserType"    # Ljava/lang/String;
    .param p4, "onFileDownListener"    # Lcom/android/settings/rbypush/downloader/OnFileDownListener;

    .line 332
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downUnKnowFileFromService(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downUnKnowFileFromService(Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->downMusicVideoPicFromService(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/rbypush/downloader/OnFileDownListener;)V

    .line 342
    :goto_0
    return-void
.end method

.method public getFileMiMeType()[[Ljava/lang/String;
    .locals 3

    .line 744
    const/16 v0, 0x42

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ".3gp"

    const-string v2, "video/3gpp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".apk"

    const-string v2, "application/vnd.android.package-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ".asf"

    const-string v2, "video/x-ms-asf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ".avi"

    const-string v2, "video/x-msvideo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, ".bin"

    const-string v2, "application/octet-stream"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, ".bmp"

    const-string v2, "image/bmp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, ".c"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, ".class"

    const-string v2, "application/octet-stream"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, ".conf"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, ".cpp"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, ".doc"

    const-string v2, "application/msword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, ".docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, ".xls"

    const-string v2, "application/vnd.ms-excel"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, ".xlsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, ".exe"

    const-string v2, "application/octet-stream"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, ".gif"

    const-string v2, "image/gif"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, ".gtar"

    const-string v2, "application/x-gtar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, ".gz"

    const-string v2, "application/x-gzip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, ".h"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, ".htm"

    const-string v2, "text/html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, ".html"

    const-string v2, "text/html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, ".jar"

    const-string v2, "application/java-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, ".java"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, ".jpeg"

    const-string v2, "image/jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, ".jpg"

    const-string v2, "image/jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, ".js"

    const-string v2, "application/x-javascript"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, ".log"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, ".m3u"

    const-string v2, "audio/x-mpegurl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, ".m4a"

    const-string v2, "audio/mp4a-latm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, ".m4b"

    const-string v2, "audio/mp4a-latm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, ".m4p"

    const-string v2, "audio/mp4a-latm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, ".m4u"

    const-string v2, "video/vnd.mpegurl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, ".m4v"

    const-string v2, "video/x-m4v"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, ".mov"

    const-string v2, "video/quicktime"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, ".mp2"

    const-string v2, "audio/x-mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, ".mp3"

    const-string v2, "audio/x-mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, ".mp4"

    const-string v2, "video/mp4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, ".mpc"

    const-string v2, "application/vnd.mpohun.certificate"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, ".mpe"

    const-string v2, "video/mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, ".mpeg"

    const-string v2, "video/mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, ".mpg"

    const-string v2, "video/mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, ".mpg4"

    const-string v2, "video/mp4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, ".mpga"

    const-string v2, "audio/mpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, ".msg"

    const-string v2, "application/vnd.ms-outlook"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, ".ogg"

    const-string v2, "audio/ogg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, ".pdf"

    const-string v2, "application/pdf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, ".png"

    const-string v2, "image/png"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, ".pps"

    const-string v2, "application/vnd.ms-powerpoint"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, ".ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, ".pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, ".prop"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, ".rc"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, ".rmvb"

    const-string v2, "audio/x-pn-realaudio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, ".rtf"

    const-string v2, "application/rtf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, ".sh"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, ".tar"

    const-string v2, "application/x-tar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, ".tgz"

    const-string v2, "application/x-compressed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, ".txt"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, ".wav"

    const-string v2, "audio/x-wav"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, ".wma"

    const-string v2, "audio/x-ms-wma"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, ".wmv"

    const-string v2, "audio/x-ms-wmv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, ".wps"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, ".xml"

    const-string v2, "text/plain"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, ".z"

    const-string v2, "application/x-compress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, ".zip"

    const-string v2, "application/x-zip-compressed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, ""

    const-string v2, "*/*"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 813
    .local v0, "MIME_MapTable":[[Ljava/lang/String;
    return-object v0
.end method

.method public getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .line 721
    const-string v0, "*/*"

    .line 723
    .local v0, "type":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 724
    .local v1, "dotIndex":I
    if-gez v1, :cond_0

    .line 725
    return-object v0

    .line 728
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "end":Ljava/lang/String;
    const-string v3, ""

    if-ne v2, v3, :cond_1

    return-object v0

    .line 731
    :cond_1
    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getFileMiMeType()[[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getFileMiMeType()[[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/android/settings/rbypush/downloader/HttpDownFileUtils;->getFileMiMeType()[[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget-object v4, v5, v6

    .line 731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    .end local v0
    :cond_3
    return-object v4
.end method

.method public isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 825
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
