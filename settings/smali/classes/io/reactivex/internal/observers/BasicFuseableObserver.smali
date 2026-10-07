.class public abstract Lio/reactivex/internal/observers/BasicFuseableObserver;
.super Ljava/lang/Object;
.source "BasicFuseableObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/internal/fuseable/QueueDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/QueueDisposable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected done:Z

.field protected final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected qd:Lio/reactivex/internal/fuseable/QueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/QueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected sourceMode:I

.field protected upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    .line 51
    return-void
.end method


# virtual methods
.method protected afterDownstream()V
    .locals 0

    .line 87
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    return-void
.end method

.method protected beforeDownstream()Z
    .locals 1

    .line 79
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 167
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->clear()V

    .line 168
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 152
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 153
    return-void
.end method

.method protected final fail(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 108
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 110
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;->onError(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 162
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    .local p1, "e":Ljava/lang/Object;, "TR;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onComplete()V
    .locals 1

    .line 115
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 120
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 57
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 60
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueDisposable;

    iput-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BasicFuseableObserver;->beforeDownstream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BasicFuseableObserver;->afterDownstream()V

    .line 72
    :cond_1
    return-void
.end method

.method protected final transitiveBoundaryFusion(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 133
    .local p0, "this":Lio/reactivex/internal/observers/BasicFuseableObserver;, "Lio/reactivex/internal/observers/BasicFuseableObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    .line 134
    .local v0, "qd":Lio/reactivex/internal/fuseable/QueueDisposable;, "Lio/reactivex/internal/fuseable/QueueDisposable<TT;>;"
    if-eqz v0, :cond_1

    .line 135
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    .line 136
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v1

    .line 137
    .local v1, "m":I
    if-eqz v1, :cond_0

    .line 138
    iput v1, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->sourceMode:I

    .line 140
    :cond_0
    return v1

    .line 143
    .end local v1
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
