.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 74
    return-void
.end method


# virtual methods
.method compute(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    .locals 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<",
            "TK;TV;>;)TV;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p4, "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    const/4 v0, 0x0

    .line 175
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 176
    .local v1, "start":J
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 181
    .local v5, "end":J
    :try_start_0
    monitor-enter p3

    .line 182
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p4, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move-wide v5, v7

    .line 184
    monitor-exit p3

    .line 185
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 187
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v7}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    .line 188
    .local v7, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_0

    .line 190
    sget-object v8, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v8}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 193
    .end local v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    nop

    .line 195
    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 198
    :cond_1
    if-nez v0, :cond_2

    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    .line 193
    :cond_2
    return-object v0

    .line 184
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p3

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7

    .line 195
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    cmp-long v3, v5, v3

    if-nez v3, :cond_3

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 198
    :cond_3
    if-nez v0, :cond_4

    .line 199
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_4
    throw v7
.end method

.method getOrCompute(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/base/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 82
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 86
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    .line 86
    return-object v1

    .line 92
    .end local v1
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v1

    if-nez v1, :cond_a

    .line 93
    :cond_2
    const/4 v1, 0x1

    .line 94
    .local v1, "createNewEntry":Z
    const/4 v2, 0x0

    .line 95
    .local v2, "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V

    .line 97
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->preWriteCleanup()V

    .line 99
    iget v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 100
    .local v3, "newCount":I
    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 101
    .local v4, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, p2

    .line 102
    .local v5, "index":I
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 104
    .local v6, "first":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_7

    .line 105
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 106
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_6

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 107
    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 108
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 109
    .local v8, "valueReference":Lcom/google/common/collect/MapMakerInternalMap$ValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    const/4 v1, 0x0

    goto :goto_2

    .line 112
    :cond_3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 113
    .local v9, "value":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_4

    .line 114
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v7, p2, v9, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10, v0}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 118
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v7, p2, v9, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 125
    :goto_1
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v10, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 127
    iput v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    .line 129
    .end local v9
    goto :goto_2

    .line 120
    .restart local v9
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 121
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    .line 145
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    .line 167
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    .line 121
    return-object v9

    .line 104
    .end local v7
    .end local v8
    .end local v9
    :cond_6
    :try_start_4
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 133
    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    .line 134
    new-instance v7, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;

    invoke-direct {v7, p3}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/base/Function;)V

    move-object v2, v7

    .line 136
    if-nez v0, :cond_8

    .line 137
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    move-object v0, v7

    .line 138
    invoke-interface {v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 139
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 141
    :cond_8
    invoke-interface {v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 145
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    .line 147
    nop

    .line 149
    if-eqz v1, :cond_a

    .line 151
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->compute(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    .line 151
    return-object v3

    .line 156
    .end local v1
    .end local v2
    :cond_a
    :try_start_6
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Recursive computation"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 158
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 161
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    .line 167
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    .line 161
    return-object v1

    .line 145
    .local v1, "createNewEntry":Z
    .restart local v2
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    throw v3

    .line 167
    .end local v0
    .end local v1
    .end local v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    throw v0
.end method
