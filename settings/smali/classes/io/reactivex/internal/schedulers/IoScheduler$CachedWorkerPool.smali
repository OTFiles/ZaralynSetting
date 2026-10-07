.class final Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "IoScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedWorkerPool"
.end annotation


# instance fields
.field final allWorkers:Lio/reactivex/disposables/CompositeDisposable;

.field private final evictorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final evictorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 11
    .param p1, "keepAliveTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 81
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    .line 82
    iput-object p4, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v1, 0x0

    .line 86
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p3, :cond_1

    .line 87
    const/4 v2, 0x1

    sget-object v3, Lio/reactivex/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 88
    iget-wide v6, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    iget-wide v8, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v0

    move-object v5, p0

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 90
    :cond_1
    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 91
    iput-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    .line 92
    return-void
.end method


# virtual methods
.method evictExpiredWorkers()V
    .locals 6

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 127
    .local v0, "currentTimestamp":J
    iget-object v2, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    .line 128
    .local v3, "threadWorker":Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;
    invoke-virtual {v3}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    .line 129
    iget-object v4, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v4, v3}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 137
    .end local v3
    :cond_0
    goto :goto_0

    .line 139
    .end local v0
    :cond_1
    return-void
.end method

.method get()Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;
    .locals 2

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    return-object v0

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    .line 105
    .local v0, "threadWorker":Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;
    if-eqz v0, :cond_1

    .line 106
    return-object v0

    .line 108
    .end local v0
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 112
    .local v0, "w":Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 113
    return-object v0
.end method

.method now()J
    .locals 2

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;)V
    .locals 4
    .param p1, "threadWorker"    # Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 120
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public run()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictExpiredWorkers()V

    .line 97
    return-void
.end method

.method shutdown()V
    .locals 2

    .line 146
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->allWorkers:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 153
    :cond_1
    return-void
.end method
