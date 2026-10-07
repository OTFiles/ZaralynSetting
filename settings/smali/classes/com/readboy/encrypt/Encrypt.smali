.class public Lcom/readboy/encrypt/Encrypt;
.super Ljava/lang/Object;
.source "Encrypt.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "rbEncrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeEndec([BI)[B
.end method
