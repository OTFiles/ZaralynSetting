.class public Lnet/lingala/zip4j/unzip/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .locals 7
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "unzipParameters"    # Lnet/lingala/zip4j/model/UnzipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 20
    if-eqz p0, :cond_6

    .line 24
    if-eqz p1, :cond_5

    .line 28
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreDateTimeAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    .line 36
    :cond_1
    if-nez p2, :cond_2

    .line 37
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreAllFileAttributes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreReadOnlyFileAttribute()Z

    move-result v0

    .line 43
    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreHiddenFileAttribute()Z

    move-result v0

    .line 44
    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreArchiveFileAttribute()Z

    move-result v0

    .line 45
    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/UnzipParameters;->isIgnoreSystemFileAttribute()Z

    move-result v0

    .line 42
    xor-int/lit8 v6, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/UnzipUtil;->setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V

    .line 48
    :goto_0
    return-void

    .line 29
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: file doesnot exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: output file is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "cannot set file properties: file header is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;ZZZZ)V
    .locals 3
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "setReadOnly"    # Z
    .param p3, "setHidden"    # Z
    .param p4, "setArchive"    # Z
    .param p5, "setSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_d

    .line 56
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttr()[B

    move-result-object v0

    .line 57
    .local v0, "externalAttrbs":[B
    if-nez v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 62
    .local v1, "atrrib":I
    const/16 v2, 0x12

    if-eq v1, v2, :cond_b

    const/16 v2, 0x26

    if-eq v1, v2, :cond_8

    const/16 v2, 0x30

    if-eq v1, v2, :cond_7

    const/16 v2, 0x32

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 88
    :pswitch_0    # 0x23
    if-eqz p4, :cond_1

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 89
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 90
    :cond_2
    if-eqz p3, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 91
    goto :goto_0

    .line 79
    :pswitch_1    # 0x21
    if-eqz p4, :cond_3

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 80
    :cond_3
    if-eqz p2, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 81
    goto :goto_0

    .line 75
    :pswitch_2    # 0x3
    if-eqz p2, :cond_4

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 76
    :cond_4
    if-eqz p3, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 77
    goto :goto_0

    .line 64
    :pswitch_3    # 0x1
    if-eqz p2, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 65
    goto :goto_0

    .line 84
    :cond_5
    :pswitch_4    # 0x22
    if-eqz p4, :cond_6

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 85
    :cond_6
    if-eqz p3, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 86
    goto :goto_0

    .line 72
    :cond_7
    :pswitch_5    # 0x20
    if-eqz p4, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileArchive(Ljava/io/File;)V

    .line 73
    goto :goto_0

    .line 93
    :cond_8
    if-eqz p2, :cond_9

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileReadOnly(Ljava/io/File;)V

    .line 94
    :cond_9
    if-eqz p3, :cond_a

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 95
    :cond_a
    if-eqz p5, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileSystemMode(Ljava/io/File;)V

    .line 96
    goto :goto_0

    .line 68
    :cond_b
    :pswitch_6    # 0x2
    if-eqz p3, :cond_c

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->setFileHidden(Ljava/io/File;)V

    .line 69
    nop

    .line 101
    :cond_c
    :goto_0
    return-void

    .line 53
    .end local v0
    .end local v1
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file header. cannot set file attributes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3    # 0x1
        :pswitch_6    # 0x2
        :pswitch_2    # 0x3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_5    # 0x20
        :pswitch_1    # 0x21
        :pswitch_4    # 0x22
        :pswitch_0    # 0x23
    .end packed-switch
.end method

.method private static setFileLastModifiedTime(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .locals 2
    .param p0, "fileHeader"    # Lnet/lingala/zip4j/model/FileHeader;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    if-gtz v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToJavaTme(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 111
    :cond_1
    return-void
.end method
