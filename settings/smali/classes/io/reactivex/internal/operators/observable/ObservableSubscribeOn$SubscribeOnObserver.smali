.class final Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscribeOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x70559c6a66be0138L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex/Observer;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 73
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 74
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 75
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 68
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 63
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 54
    return-void
.end method

.method setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;, "Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 84
    return-void
.end method
