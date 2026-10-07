.class public Lorg/apache/commons/mail/resolver/DataSourceFileResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceFileResolver.java"


# instance fields
.field private final baseDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->baseDir:Ljava/io/File;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "baseDir"    # Ljava/io/File;

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->baseDir:Ljava/io/File;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "lenient"    # Z

    .line 61
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->baseDir:Ljava/io/File;

    .line 63
    return-void
.end method


# virtual methods
.method public getBaseDir()Ljava/io/File;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->baseDir:Ljava/io/File;

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

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->isLenient()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 5
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "result":Ljavax/activation/DataSource;
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->isCid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->getBaseDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceFileResolver;->getBaseDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v1, v2

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    new-instance v2, Ljavax/activation/FileDataSource;

    invoke-direct {v2, v1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    move-object v0, v2

    goto :goto_1

    .line 104
    :cond_2
    if-eqz p2, :cond_3

    .end local v1
    goto :goto_1

    .line 106
    .restart local v1
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cant resolve the following file resource :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    .end local v1
    :cond_4
    :goto_1
    return-object v0
.end method
