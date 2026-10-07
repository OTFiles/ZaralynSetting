.class public Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceUrlResolver.java"


# instance fields
.field private final baseUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/net/URL;

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/net/URL;
    .param p2, "lenient"    # Z

    .line 54
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    .line 56
    return-void
.end method


# virtual methods
.method protected createUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 120
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->getBaseUrl()Ljava/net/URL;

    move-result-object v1

    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_2
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No resource defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaseUrl()Ljava/net/URL;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->baseUrl:Ljava/net/URL;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 1
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 4
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    move-object v1, v0

    .line 83
    .local v1, "result":Ljavax/activation/DataSource;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->isCid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceUrlResolver;->createUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 86
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Ljavax/activation/URLDataSource;

    invoke-direct {v3, v2}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    move-object v1, v3

    .line 87
    invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    .line 90
    .end local v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 92
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    if-eqz p2, :cond_1

    .line 96
    return-object v0

    .line 98
    :cond_1
    throw v2
.end method
