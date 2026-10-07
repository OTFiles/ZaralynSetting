.class Lcom/android/settings/rbypush/RPushReceiver$1;
.super Ljava/lang/Object;
.source "RPushReceiver.java"

# interfaces
.implements Lcom/android/settings/rbypush/downloader/OnFileDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rbypush/RPushReceiver;->startDownloadApkFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mLastProGress:I

.field final synthetic this$0:Lcom/android/settings/rbypush/RPushReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$destFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/rbypush/RPushReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/rbypush/RPushReceiver;

    .line 316
    iput-object p1, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->this$0:Lcom/android/settings/rbypush/RPushReceiver;

    iput-object p2, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$destFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->mLastProGress:I

    return-void
.end method


# virtual methods
.method public onFileDownStatus(ILjava/lang/Object;IJJ)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "proGress"    # I
    .param p4, "currentDownProGress"    # J
    .param p6, "totalProGress"    # J

    .line 320
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 322
    const/4 v1, 0x0

    move-object v2, v1

    .line 324
    .local v2, "apkFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    instance-of v4, p2, Ljava/io/File;

    if-eqz v4, :cond_0

    .line 325
    move-object v4, p2

    check-cast v4, Ljava/io/File;

    .line 326
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 327
    .end local v4
    goto :goto_0

    :cond_0
    instance-of v4, p2, Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 328
    move-object v4, p2

    check-cast v4, Landroid/net/Uri;

    .line 329
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->getInstance()Lcom/android/settings/rbypush/downloader/FileSDCardUtil;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/settings/rbypush/downloader/FileSDCardUtil;->getPathFromContentUri(Landroid/net/Uri;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "fileNameAndPath":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 331
    aget-object v6, v5, v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 335
    .end local v4
    .end local v5
    :cond_1
    :goto_0
    goto :goto_1

    .line 334
    :catch_0
    move-exception v4

    .line 336
    :goto_1
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$destFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "====divhee=============apkFilePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 338
    iget-object v4, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$destFilePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->this$0:Lcom/android/settings/rbypush/RPushReceiver;

    iget-object v3, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$destFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/rbypush/RPushReceiver;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 343
    :cond_2
    move-object v0, v1

    .line 345
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    move-object v0, v1

    .line 346
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/settings/rbypush/RPushReceiver;->sendPkgToParent(Ljava/lang/String;Landroid/content/Context;)V

    .line 348
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 347
    :catch_1
    move-exception v1

    .line 351
    :goto_2
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ReadboyBackgroundInstallApp"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "intent1":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v3, "apkPath"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v3, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    .end local v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 355
    :catch_2
    move-exception v1

    .line 359
    :goto_3
    move-object v1, v2

    .line 360
    .local v1, "needDeleteFile":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/settings/rbypush/RPushReceiver$1$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/rbypush/RPushReceiver$1$1;-><init>(Lcom/android/settings/rbypush/RPushReceiver$1;Ljava/lang/String;)V

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    .end local v0
    .end local v1
    .end local v2
    :cond_3
    :goto_4
    iget v0, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->mLastProGress:I

    if-eq v0, p3, :cond_4

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_4

    .line 380
    iput p3, p0, Lcom/android/settings/rbypush/RPushReceiver$1;->mLastProGress:I

    .line 381
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=status======divhee========readboy=========startDownload_ApkFile==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ;;; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    return-void
.end method
