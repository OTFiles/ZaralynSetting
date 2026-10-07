.class public final Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
.super Ljava/lang/Object;
.source "SpscLinkedArrayQueue.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/SimplePlainQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final consumerMask:I

.field producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J

.field producerLookAheadStep:I

.field final producerMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "bufferSize"    # I

    .line 48
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 50
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    .line 51
    .local v1, "mask":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 52
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 53
    iput v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    .line 54
    invoke-direct {p0, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->adjustLookAheadStep(I)V

    .line 55
    iput-object v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    iput v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    .line 57
    add-int/lit8 v3, v1, -0x1

    int-to-long v3, v3

    iput-wide v3, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 58
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 59
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 213
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    .line 214
    return-void
.end method

.method private static calcDirectOffset(I)I
    .locals 0
    .param p0, "index"    # I

    .line 244
    return p0
.end method

.method private static calcWrappedOffset(JI)I
    .locals 1
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .line 241
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    return v0
.end method

.method private lpConsumerIndex()J
    .locals 2

    .line 229
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lpProducerIndex()J
    .locals 2

    .line 225
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .locals 2

    .line 221
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 251
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private lvNextBufferAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 3
    .param p2, "nextIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-static {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    .line 120
    .local v0, "nextOffset":I
    invoke-static {p1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 121
    .local v1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 122
    return-object v1
.end method

.method private lvProducerIndex()J
    .locals 2

    .line 217
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .locals 4
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 154
    invoke-static {p2, p3, p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 155
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 156
    .local v1, "n":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 157
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 158
    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {p0, v2, v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 160
    :cond_0
    return-object v1
.end method

.method private resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .locals 6
    .param p2, "currIndex"    # J
    .param p4, "offset"    # I
    .param p6, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p1, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p5, "e":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 103
    .local v0, "capacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 104
    .local v1, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 105
    add-long v2, p2, p6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 106
    invoke-static {v1, p4, p5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 107
    invoke-direct {p0, p1, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 108
    sget-object v2, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 110
    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 111
    return-void
.end method

.method private soConsumerIndex(J)V
    .locals 1
    .param p1, "v"    # J

    .line 237
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 238
    return-void
.end method

.method private static soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 247
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 248
    return-void
.end method

.method private soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method private soProducerIndex(J)V
    .locals 1
    .param p1, "v"    # J

    .line 233
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 234
    return-void
.end method

.method private writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 2
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p5, p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 96
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 186
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .line 209
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    .line 68
    if-eqz p1, :cond_3

    .line 72
    iget-object v9, v8, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 73
    .local v9, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lpProducerIndex()J

    move-result-wide v10

    .line 74
    .local v10, "index":J
    iget v12, v8, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    .line 75
    .local v12, "mask":I
    invoke-static {v10, v11, v12}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v13

    .line 76
    .local v13, "offset":I
    iget-wide v0, v8, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    .line 77
    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 79
    :cond_0
    iget v14, v8, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    .line 81
    .local v14, "lookAheadStep":I
    int-to-long v0, v14

    add-long/2addr v0, v10

    invoke-static {v0, v1, v12}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v6

    .line 82
    .local v6, "lookAheadElementOffset":I
    invoke-static {v9, v6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1

    .line 83
    int-to-long v3, v14

    add-long/2addr v3, v10

    sub-long/2addr v3, v1

    iput-wide v3, v8, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 84
    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 85
    :cond_1
    add-long/2addr v1, v10

    invoke-static {v1, v2, v12}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    invoke-static {v9, v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 88
    :cond_2
    int-to-long v4, v12

    move-object v0, v8

    move-object v1, v9

    move-wide v2, v10

    move-wide v15, v4

    move v4, v13

    move-object/from16 v5, p1

    move/from16 v17, v6

    move-wide v6, v15

    .end local v6
    .local v17, "lookAheadElementOffset":I
    invoke-direct/range {v0 .. v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 89
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v9
    .end local v10
    .end local v12
    .end local v13
    .end local v14
    .end local v17
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 135
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 136
    .local v1, "index":J
    iget v3, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    .line 137
    .local v3, "mask":I
    invoke-static {v1, v2, v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 138
    .local v4, "offset":I
    invoke-static {v0, v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 139
    .local v5, "e":Ljava/lang/Object;
    sget-object v6, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 140
    .local v6, "isNextBuffer":Z
    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 141
    invoke-static {v0, v4, v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 142
    const-wide/16 v7, 0x1

    add-long/2addr v7, v1

    invoke-direct {p0, v7, v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    .line 143
    return-object v5

    .line 144
    :cond_1
    if-eqz v6, :cond_2

    .line 145
    add-int/lit8 v7, v3, 0x1

    invoke-direct {p0, v0, v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->lvNextBufferAndUnlink(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2, v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 148
    :cond_2
    return-object v7
.end method
