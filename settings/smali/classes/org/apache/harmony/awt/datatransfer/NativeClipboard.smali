.class public abstract Lorg/apache/harmony/awt/datatransfer/NativeClipboard;
.super Ljava/awt/datatransfer/Clipboard;
.source "NativeClipboard.java"


# static fields
.field protected static final OPS_TIMEOUT:I = 0x2710


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Ljava/awt/datatransfer/Clipboard;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onRestart()V
    .locals 0

    .line 56
    return-void
.end method

.method public onShutdown()V
    .locals 0

    .line 48
    return-void
.end method
