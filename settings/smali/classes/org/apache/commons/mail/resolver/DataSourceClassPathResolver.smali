.class public Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceClassPathResolver.java"


# instance fields
.field private final classPathBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 41
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "classPathBase"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 51
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "classPathBase"    # Ljava/lang/String;
    .param p2, "lenient"    # Z

    .line 62
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 63
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resourceLocation"    # Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->getClassPathBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassPathBase()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->classPathBase:Ljava/lang/String;

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

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 8
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    move-object v1, v0

    .line 89
    .local v1, "result":Ljavax/activation/DataSource;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isCid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "mimeType":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "resourceName":Ljava/lang/String;
    const-class v4, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 95
    .local v4, "is":Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 99
    :try_start_1
    new-instance v5, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v5, v4, v2}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    .local v5, "ds":Ljavax/mail/util/ByteArrayDataSource;
    const-class v6, Lorg/apache/commons/mail/resolver/DataSourceClassPathResolver;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/mail/util/ByteArrayDataSource;->setName(Ljava/lang/String;)V

    .line 103
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    .line 107
    .end local v5
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 108
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v5

    .line 112
    :cond_0
    if-eqz p2, :cond_1

    .line 114
    return-object v0

    .line 116
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The following class path resource was not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    .end local v2
    .end local v3
    .end local v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/IOException;
    if-eqz p2, :cond_3

    .line 127
    return-object v0

    .line 129
    :cond_3
    throw v2
.end method
