.class public final Lio/reactivex/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 46
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 68
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    .line 70
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 72
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/LinkageError;

    throw v0

    .line 71
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0

    .line 69
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0
.end method
