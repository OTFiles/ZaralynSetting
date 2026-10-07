.class public Lorg/apache/commons/mail/EmailException;
.super Ljava/lang/Exception;
.source "EmailException.java"


# static fields
.field private static final serialVersionUID:J = 0x4d07f50c618d1678L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 1

    .line 90
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/EmailException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 91
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 101
    monitor-enter p1

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 104
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lorg/apache/commons/mail/EmailException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 108
    .end local v0
    monitor-exit p1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 119
    monitor-enter p1

    .line 121
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 122
    monitor-exit p1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
