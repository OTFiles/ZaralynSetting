.class public final Lio/reactivex/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)Z
    .locals 2
    .param p1, "disposable"    # Lio/reactivex/disposables/Disposable;

    .line 99
    const-string v0, "disposable is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 104
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez v0, :cond_0

    .line 105
    new-instance v1, Lio/reactivex/internal/util/OpenHashSet;

    invoke-direct {v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>()V

    move-object v0, v1

    .line 106
    iput-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 108
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 111
    .end local v0
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 113
    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Lio/reactivex/disposables/Disposable;)Z
    .locals 3
    .param p1, "disposable"    # Lio/reactivex/disposables/Disposable;

    .line 172
    const-string v0, "disposables is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    return v1

    .line 176
    :cond_0
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 178
    monitor-exit p0

    return v1

    .line 181
    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 182
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 185
    .end local v0
    :cond_2
    monitor-exit p0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 183
    .restart local v0
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 185
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 75
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 79
    .local v0, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    .line 80
    monitor-exit p0

    .line 82
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    .line 83
    return-void

    .line 80
    .end local v0
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispose(Lio/reactivex/internal/util/OpenHashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/OpenHashSet<",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "set":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<Lio/reactivex/disposables/Disposable;>;"
    if-nez p1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Lio/reactivex/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "array":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    .end local v0
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v5, v1, v0

    .line 238
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Lio/reactivex/disposables/Disposable;

    if-eqz v6, :cond_2

    .line 240
    :try_start_0
    move-object v6, v5

    check-cast v6, Lio/reactivex/disposables/Disposable;

    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 247
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v6

    .line 242
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 243
    if-nez v4, :cond_1

    .line 244
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 246
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v5
    .end local v6
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_3
    if-eqz v4, :cond_5

    .line 251
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 252
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 254
    :cond_4
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v0, v4}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    .line 256
    :cond_5
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    return v0
.end method

.method public remove(Lio/reactivex/disposables/Disposable;)Z
    .locals 1
    .param p1, "disposable"    # Lio/reactivex/disposables/Disposable;

    .line 156
    invoke-virtual {p0, p1}, Lio/reactivex/disposables/CompositeDisposable;->delete(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
