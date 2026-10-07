.class public abstract Lcom/readboy/store/AppUpdate/BaseCheck;
.super Ljava/lang/Object;
.source "BaseCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;
    }
.end annotation


# static fields
.field public static final ERROR_DEVICE_UNFOUND:I = 0x2

.field public static final ERROR_IS_LASTEST:I = 0x0

.field public static final ERROR_NET:I = 0x4

.field public static final ERROR_UNFOUND:I = 0x1

.field public static final ERROR_UNNEED:I = 0x3


# instance fields
.field private cancel:Z

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;

    .line 45
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/readboy/store/AppUpdate/BaseCheck;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->cancel:Z

    .line 49
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->url:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->filePath:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->fileName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private doGet(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;
    .locals 5
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpGet"    # Lorg/apache/http/client/methods/HttpGet;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    const-string v1, "tag"

    const-string v2, "doGet: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 82
    .local v1, "response":Lorg/apache/http/HttpResponse;
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doGet: cade"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 84
    const-string v2, "tag"

    const-string v3, "doGet: response success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 86
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 96
    .end local v1
    .end local v2
    :cond_0
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1
    goto :goto_1

    .line 92
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1
    goto :goto_0

    .line 90
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v1}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .end local v1
    goto :goto_0

    .line 88
    :catch_3
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1
    goto :goto_0

    .line 97
    :goto_1
    return-object v0
.end method

.method public static getMsg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # I

    .line 132
    const-string v0, "error"

    .line 133
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0    # 0x4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_check_error_net:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_1    # 0x3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_check_error_unNeed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    goto :goto_0

    .line 141
    :pswitch_2    # 0x2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_check_error_device_unFound:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    goto :goto_0

    .line 138
    :pswitch_3    # 0x1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_check_error_unFound:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 135
    :pswitch_4    # 0x0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/readboy/store/AppUpdate/R$string;->rb_app_update_check_error_isLasted:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    nop

    .line 150
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4    # 0x0
        :pswitch_3    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_0    # 0x4
    .end packed-switch
.end method


# virtual methods
.method public abstract doCheck(Ljava/lang/String;)V
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    return-object v0
.end method

.method public isCancel()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->cancel:Z

    return v0
.end method

.method public run()V
    .locals 4

    .line 58
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 60
    nop

    .line 63
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_1
    iget-object v1, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v1, v0}, Lcom/readboy/store/AppUpdate/BaseCheck;->doGet(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "getInfo":Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 71
    :cond_0
    nop

    .line 72
    invoke-virtual {p0}, Lcom/readboy/store/AppUpdate/BaseCheck;->isCancel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/readboy/store/AppUpdate/BaseCheck;->doCheck(Ljava/lang/String;)V

    .line 75
    :cond_1
    return-void

    .line 68
    .end local v1
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 71
    :cond_2
    throw v1

    .line 59
    .end local v0
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method public setCancel(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->cancel:Z

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    .line 105
    :cond_0
    return-void
.end method

.method public setOnCheckListener(Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    .line 122
    iput-object p1, p0, Lcom/readboy/store/AppUpdate/BaseCheck;->listener:Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;

    .line 123
    return-void
.end method
