.class public Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private compressedSize:J

.field private diskNumberStart:I

.field private offsetLocalHeader:J

.field private unCompressedSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 35
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    .line 36
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCompressedSize()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    return-wide v0
.end method

.method public getDiskNumberStart()I
    .locals 1

    .line 81
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    return v0
.end method

.method public getOffsetLocalHeader()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    return-wide v0
.end method

.method public getUnCompressedSize()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .locals 0
    .param p1, "compressedSize"    # J

    .line 61
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->compressedSize:J

    .line 62
    return-void
.end method

.method public setDiskNumberStart(I)V
    .locals 0
    .param p1, "diskNumberStart"    # I

    .line 85
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->diskNumberStart:I

    .line 86
    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 0
    .param p1, "offsetLocalHeader"    # J

    .line 77
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->offsetLocalHeader:J

    .line 78
    return-void
.end method

.method public setUnCompressedSize(J)V
    .locals 0
    .param p1, "unCompressedSize"    # J

    .line 69
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->unCompressedSize:J

    .line 70
    return-void
.end method
