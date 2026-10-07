.class public Lcom/readboy/store/download/DownloadErrorHelper;
.super Ljava/lang/Object;
.source "DownloadErrorHelper.java"


# static fields
.field public static final DOWNLOADING:I = 0x256

.field public static final DOWNLOAD_CANCEL:I = 0x257

.field public static final DOWNLOAD_ERROR_MASK:I = 0xfff0

.field public static final DOWNLOAD_ERROR_NET:I = 0xfff4

.field public static final DOWNLOAD_ERROR_UNKNOWN:I = 0xfff2

.field public static final DOWNLOAD_ERROR_WRITE_FILE:I = 0xfff1

.field public static final DOWNLOAD_FILE_CREATE_FAILE:I = 0x10000

.field public static final DOWNLOAD_FILE_EXCEPTION:I = 0x258

.field public static final DOWNLOAD_OUT_OF_SPACE:I = 0xfff8

.field public static final DOWNLOAD_START:I = 0x254

.field public static final DOWNLOAD_SUCCESS:I = 0x255


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
