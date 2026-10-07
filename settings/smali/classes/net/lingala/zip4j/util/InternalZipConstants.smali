.class public interface abstract Lnet/lingala/zip4j/util/InternalZipConstants;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final CHARSET_DEFAULT:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_DEFAULT:Ljava/lang/String;

    .line 167
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    .line 19
    return-void
.end method
