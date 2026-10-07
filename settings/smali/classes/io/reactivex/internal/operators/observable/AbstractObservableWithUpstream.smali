.class abstract Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.super Lio/reactivex/Observable;
.source "AbstractObservableWithUpstream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field protected final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;, "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<TT;TU;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex/ObservableSource;

    .line 36
    return-void
.end method
