.class public final Lio/reactivex/exceptions/ProtocolViolationException;
.super Ljava/lang/IllegalStateException;
.source "ProtocolViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x16d353715d40a41aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
