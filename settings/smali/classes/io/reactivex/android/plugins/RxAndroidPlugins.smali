.class public final Lio/reactivex/android/plugins/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile onInitMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 106
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 97
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;Lio/reactivex/Scheduler;>;"
    .local p1, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    invoke-static {p0, p1}, Lio/reactivex/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    .line 98
    .local v0, "scheduler":Lio/reactivex/Scheduler;
    if-eqz v0, :cond_0

    .line 101
    return-object v0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Scheduler Callable returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 86
    .local p0, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    .line 87
    .local v0, "scheduler":Lio/reactivex/Scheduler;
    if-eqz v0, :cond_0

    .line 90
    return-object v0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Scheduler Callable returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    .end local v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 35
    .local p0, "scheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    if-eqz p0, :cond_1

    .line 38
    sget-object v0, Lio/reactivex/android/plugins/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/functions/Function;

    .line 39
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 40
    invoke-static {p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 42
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 36
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "scheduler"    # Lio/reactivex/Scheduler;

    .line 50
    if-eqz p0, :cond_1

    .line 53
    sget-object v0, Lio/reactivex/android/plugins/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/functions/Function;

    .line 54
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 55
    return-object p0

    .line 57
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1

    .line 51
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
