.class public abstract Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;
.super Ljava/lang/Object;
.source "DataSourceBaseResolver.java"

# interfaces
.implements Lorg/apache/commons/mail/DataSourceResolver;


# instance fields
.field private final lenient:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;->lenient:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;->lenient:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected isCid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "resourceLocation"    # Ljava/lang/String;

    .line 67
    const-string v0, "cid:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isFileUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;

    .line 78
    const-string v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isHttpUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;

    .line 89
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isLenient()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/commons/mail/resolver/DataSourceBaseResolver;->lenient:Z

    return v0
.end method
