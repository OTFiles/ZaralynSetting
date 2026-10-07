.class public Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;
.super Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.source "DataSourceCompositeResolver.java"


# instance fields
.field private final dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;


# direct methods
.method public constructor <init>([Lorg/apache/commons/mail/DataSourceResolver;)V
    .locals 3
    .param p1, "dataSourceResolvers"    # [Lorg/apache/commons/mail/DataSourceResolver;

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>()V

    .line 42
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/mail/DataSourceResolver;

    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    .line 43
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/mail/DataSourceResolver;Z)V
    .locals 3
    .param p1, "dataSourceResolvers"    # [Lorg/apache/commons/mail/DataSourceResolver;
    .param p2, "isLenient"    # Z

    .line 54
    invoke-direct {p0, p2}, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;-><init>(Z)V

    .line 55
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/mail/DataSourceResolver;

    iput-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    .line 56
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method


# virtual methods
.method public getDataSourceResolvers()[Lorg/apache/commons/mail/DataSourceResolver;
    .locals 4

    .line 67
    iget-object v0, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/commons/mail/DataSourceResolver;

    .line 68
    .local v0, "resolvers":[Lorg/apache/commons/mail/DataSourceResolver;
    iget-object v1, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    iget-object v2, p0, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->dataSourceResolvers:[Lorg/apache/commons/mail/DataSourceResolver;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 4
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v0

    .line 78
    .local v0, "result":Ljavax/activation/DataSource;
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->isLenient()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The following resource was not found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    :goto_0
    return-object v0
.end method

.method public resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;
    .locals 3
    .param p1, "resourceLocation"    # Ljava/lang/String;
    .param p2, "isLenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->getDataSourceResolvers()[Lorg/apache/commons/mail/DataSourceResolver;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/mail/resolver/DataSourceCompositeResolver;->getDataSourceResolvers()[Lorg/apache/commons/mail/DataSourceResolver;

    move-result-object v1

    aget-object v1, v1, v0

    .line 93
    .local v1, "dataSourceResolver":Lorg/apache/commons/mail/DataSourceResolver;
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/mail/DataSourceResolver;->resolve(Ljava/lang/String;Z)Ljavax/activation/DataSource;

    move-result-object v2

    .line 95
    .local v2, "dataSource":Ljavax/activation/DataSource;
    if-eqz v2, :cond_0

    .line 97
    return-object v2

    .line 90
    .end local v1
    .end local v2
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0
    :cond_1
    if-eqz p2, :cond_2

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The following resource was not found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
