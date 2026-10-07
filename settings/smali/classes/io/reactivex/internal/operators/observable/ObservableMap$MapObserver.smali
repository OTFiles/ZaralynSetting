.class final Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;
.source "ObservableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;, "Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver<TT;TU;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+TU;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    .line 40
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/functions/Function;

    .line 41
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;, "Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->done:Z

    if-eqz v0, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->sourceMode:I

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->downstream:Lio/reactivex/Observer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 51
    return-void

    .line 57
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "v":Ljava/lang/Object;, "TU;"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 60
    nop

    .line 62
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 63
    return-void

    .line 58
    .end local v0
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->fail(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;, "Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver<TT;TU;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->qd:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "t":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper function returned a null value."

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 67
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;, "Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver<TT;TU;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableMap$MapObserver;->transitiveBoundaryFusion(I)I

    move-result v0

    return v0
.end method
