.class public Lcom/readboy/store/AppUpdate/ReCheckUpdate;
.super Lcom/readboy/store/AppUpdate/BaseCheck;
.source "ReCheckUpdate.java"


# static fields
.field public static BASE_URL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RCheckUpdate"

.field private static final TEST:Z = false


# instance fields
.field private updateUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "http://g-apkstore.strongwind.cn"

    sput-object v0, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->BASE_URL:Ljava/lang/String;

    .line 22
    const-string v0, "http://g-apkstore.strongwind.cn"

    sput-object v0, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->BASE_URL:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/readboy/store/AppUpdate/BaseCheck;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->updateUrl:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public doCheck(Ljava/lang/String;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    if-eqz p1, :cond_7

    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "updateInfoBean":Lcom/readboy/store/AppUpdate/UpdateInfoBean;
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/readboy/store/AppUpdate/UpdateInfoBean;

    move-object v1, v2

    .line 43
    const-string v2, "RCheckUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCheck: updateInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 51
    invoke-static {v1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 52
    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "downloadUrl":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/readboy/store/AppUpdate/Utils;->getFileNameFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-static {v2}, Lcom/readboy/store/AppUpdate/Utils;->MD5Hex(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "md5":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->isCancel()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v4

    invoke-static {v4}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;->fileExist(Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void

    .line 65
    .end local v3
    :cond_1
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->isCancel()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v3

    invoke-static {v3}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;->needUpdate(Ljava/lang/Object;)V

    .line 69
    .end local v0
    .end local v2
    :cond_2
    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x3

    .line 71
    .local v0, "error":I
    invoke-static {v1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 72
    invoke-virtual {v1}, Lcom/readboy/store/AppUpdate/UpdateInfoBean;->getErrorcode()I

    move-result v0

    .line 74
    :cond_4
    const-string v2, "RCheckUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v2

    invoke-static {v2}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;->onError(I)V

    .line 79
    .end local v0
    .end local v1
    :cond_5
    :goto_0
    goto :goto_1

    .line 44
    .restart local v1
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->isCancel()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v3

    invoke-static {v3}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 46
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;->onError(I)V

    .line 48
    :cond_6
    return-void

    .line 80
    .end local v1
    .end local v2
    :cond_7
    const-string v1, "RCheckUpdate"

    const-string v2, "ERROR_NET="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v1

    invoke-static {v1}, Lcom/readboy/store/AppUpdate/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 82
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;->onError(I)V

    .line 85
    :cond_8
    :goto_1
    return-void
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/ReCheckUpdate;->updateUrl:Ljava/lang/String;

    return-object v0
.end method
