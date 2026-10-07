.class public abstract Lnet/lingala/zip4j/io/BaseInputStream;
.super Ljava/io/InputStream;
.source "BaseInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getUnzipEngine()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    const/4 v0, 0x0

    return v0
.end method
