.class public final Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;,
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;
    }
.end annotation


# static fields
.field static final POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_ENABLED:Z

.field public static final PURGE_PERIOD_SECONDS:I

.field static final PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    .line 93
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 95
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;

    invoke-direct {v1}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;-><init>()V

    .line 96
    .local v1, "pp":Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;
    invoke-virtual {v1, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->load(Ljava/util/Properties;)V

    .line 98
    iget-boolean v2, v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgeEnable:Z

    sput-boolean v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    .line 99
    iget v2, v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgePeriod:I

    sput v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    .line 101
    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    .line 102
    .end local v0
    .end local v1
    return-void
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .param p0, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 135
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 136
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    sget-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v1, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V

    .line 137
    return-object v0
.end method

.method public static start()V
    .locals 1

    .line 58
    sget-boolean v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryStart(Z)V

    .line 59
    return-void
.end method

.method static tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p0, "purgeEnabled"    # Z
    .param p1, "exec"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 141
    if-eqz p0, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 143
    .local v0, "e":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    sget-object v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v0
    :cond_0
    return-void
.end method

.method static tryStart(Z)V
    .locals 11
    .param p0, "purgeEnabled"    # Z

    .line 62
    if-eqz p0, :cond_2

    .line 64
    :goto_0
    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .local v0, "curr":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v3, "RxSchedulerPurge"

    invoke-direct {v2, v3}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 69
    .local v1, "next":Ljava/util/concurrent/ScheduledExecutorService;
    sget-object v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v5, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;

    invoke-direct {v5}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;-><init>()V

    sget v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    int-to-long v6, v2

    sget v2, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    int-to-long v8, v2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, v1

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 73
    return-void

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 77
    .end local v0
    .end local v1
    goto :goto_0

    .line 79
    :cond_2
    return-void
.end method
