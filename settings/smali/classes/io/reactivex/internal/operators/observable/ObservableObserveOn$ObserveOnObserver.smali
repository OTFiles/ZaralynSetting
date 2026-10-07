.class final Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "ObservableObserveOn.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b45d4a143741ca0L


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field volatile disposed:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field outputFused:Z

.field queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field upstream:Lio/reactivex/disposables/Disposable;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/Scheduler$Worker;ZI)V
    .locals 0
    .param p2, "worker"    # Lio/reactivex/Scheduler$Worker;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    .line 73
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 74
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    .line 75
    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->bufferSize:I

    .line 76
    return-void
.end method


# virtual methods
.method checkTerminated(ZZLio/reactivex/Observer;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/Observer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 260
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    .local p3, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 262
    return v1

    .line 264
    :cond_0
    if-eqz p1, :cond_4

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 266
    .local v0, "e":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    if-eqz v2, :cond_2

    .line 267
    if-eqz p2, :cond_4

    .line 268
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 269
    if-eqz v0, :cond_1

    .line 270
    invoke-interface {p3, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    .line 274
    :goto_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v2}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 275
    return v1

    .line 278
    :cond_2
    if-eqz v0, :cond_3

    .line 279
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 280
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 281
    invoke-interface {p3, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 282
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v2}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 283
    return v1

    .line 285
    :cond_3
    if-eqz p2, :cond_4

    .line 286
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 287
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    .line 288
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v2}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 289
    return v1

    .line 293
    .end local v0
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 313
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 314
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 144
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 152
    :cond_0
    return-void
.end method

.method drainFused()V
    .locals 6

    .line 212
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    const/4 v0, 0x1

    move v1, v0

    .line 215
    .local v1, "missed":I
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    if-eqz v2, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 220
    .local v2, "d":Z
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 222
    .local v3, "ex":Ljava/lang/Throwable;
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 223
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 224
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 225
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 226
    return-void

    .line 229
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 231
    if-eqz v2, :cond_3

    .line 232
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 233
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 234
    .end local v3
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 235
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v3, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v3}, Lio/reactivex/Observer;->onComplete()V

    .line 239
    :goto_1
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v3}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 240
    return-void

    .line 243
    .end local v0
    .restart local v3
    :cond_3
    neg-int v4, v1

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->addAndGet(I)I

    move-result v1

    .line 244
    if-nez v1, :cond_4

    .line 245
    nop

    .line 248
    .end local v2
    .end local v3
    return-void

    .line 247
    :cond_4
    goto :goto_0
.end method

.method drainNormal()V
    .locals 7

    .line 166
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    const/4 v0, 0x1

    .line 168
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 169
    .local v1, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    .line 172
    .local v2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    :cond_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->checkTerminated(ZZLio/reactivex/Observer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    return-void

    .line 177
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 181
    .local v3, "d":Z
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 190
    .local v5, "v":Ljava/lang/Object;, "TT;"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 189
    nop

    .line 191
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 193
    .local v4, "empty":Z
    :goto_1
    invoke-virtual {p0, v3, v4, v2}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->checkTerminated(ZZLio/reactivex/Observer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    return-void

    .line 197
    :cond_3
    if-eqz v4, :cond_4

    .line 198
    nop

    .line 204
    .end local v3
    .end local v4
    .end local v5
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->addAndGet(I)I

    move-result v0

    .line 205
    if-nez v0, :cond_0

    .line 206
    nop

    .line 209
    return-void

    .line 201
    .restart local v3
    .restart local v4
    .restart local v5
    :cond_4
    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 202
    .end local v3
    .end local v4
    .end local v5
    goto :goto_0

    .line 182
    .restart local v3
    :catch_0
    move-exception v5

    .line 183
    .local v5, "ex":Ljava/lang/Throwable;
    invoke-static {v5}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 184
    iput-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    .line 185
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 186
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 187
    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 188
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v4}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 189
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 318
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 135
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    if-eqz v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 140
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 131
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    if-eqz v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 120
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 3
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 82
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_1

    .line 84
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueDisposable;

    .line 86
    .local v0, "qd":Lio/reactivex/internal/fuseable/QueueDisposable;, "Lio/reactivex/internal/fuseable/QueueDisposable<TT;>;"
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v1

    .line 88
    .local v1, "m":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    .line 90
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 91
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    .line 92
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    .line 94
    return-void

    .line 96
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 97
    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    .line 98
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 99
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 100
    return-void

    .line 104
    .end local v0
    .end local v1
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 108
    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 298
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->outputFused:Z

    .line 300
    const/4 v0, 0x2

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 1

    .line 252
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->outputFused:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->drainFused()V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->drainNormal()V

    .line 257
    :goto_0
    return-void
.end method

.method schedule()V
    .locals 1

    .line 160
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 163
    :cond_0
    return-void
.end method
