.class final Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field volatile disposed:Z

.field private final poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

.field private final serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field private final timed:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;)V
    .locals 2
    .param p1, "poolWorker"    # Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 198
    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    .line 199
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 200
    new-instance v0, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    .line 201
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/disposables/CompositeDisposable;

    .line 202
    new-instance v0, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    .line 203
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 204
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 205
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    .line 211
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    .line 213
    :cond_0
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 7
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 223
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0

    .line 227
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 7
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 233
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0

    .line 237
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-object v6, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex/disposables/CompositeDisposable;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/DisposableContainer;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object v0

    return-object v0
.end method
