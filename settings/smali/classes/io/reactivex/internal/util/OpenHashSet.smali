.class public final Lio/reactivex/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field mask:I

.field maxSize:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    .line 38
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .line 49
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    .line 51
    invoke-static {p1}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 52
    .local v0, "c":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    .line 53
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    .line 54
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 55
    return-void
.end method

.method static mix(I)I
    .locals 2
    .param p0, "x"    # I

    .line 163
    const v0, -0x61c88647

    mul-int/2addr v0, p0

    .line 164
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 59
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    .line 61
    .local v1, "m":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, v1

    .line 62
    .local v2, "pos":I
    aget-object v3, v0, v2

    .line 63
    .local v3, "curr":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 65
    return v5

    .line 68
    :cond_0
    add-int/lit8 v4, v2, 0x1

    and-int v2, v4, v1

    .line 69
    aget-object v3, v0, v2

    .line 70
    if-nez v3, :cond_1

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    return v5

    .line 78
    :cond_2
    :goto_0
    aput-object p1, v0, v2

    .line 79
    iget v4, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    iget v6, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    if-lt v4, v6, :cond_3

    .line 80
    invoke-virtual {p0}, Lio/reactivex/internal/util/OpenHashSet;->rehash()V

    .line 82
    :cond_3
    return v5
.end method

.method public keys()[Ljava/lang/Object;
    .locals 1

    .line 168
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method rehash()V
    .locals 8

    .line 136
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 137
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    .line 138
    .local v1, "i":I
    shl-int/lit8 v2, v1, 0x1

    .line 139
    .local v2, "newCap":I
    add-int/lit8 v3, v2, -0x1

    .line 141
    .local v3, "m":I
    new-array v4, v2, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 143
    .local v4, "b":[Ljava/lang/Object;, "[TT;"
    iget v5, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    .local v5, "j":I
    :goto_0
    add-int/lit8 v6, v5, -0x1

    .local v6, "j":I
    if-eqz v5, :cond_3

    .line 144
    .end local v5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    aget-object v5, v0, v1

    if-nez v5, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v5

    and-int/2addr v5, v3

    .line 146
    .local v5, "pos":I
    aget-object v7, v4, v5

    if-eqz v7, :cond_2

    .line 148
    :cond_1
    add-int/lit8 v7, v5, 0x1

    and-int v5, v7, v3

    .line 149
    aget-object v7, v4, v5

    if-nez v7, :cond_1

    .line 150
    nop

    .line 154
    :cond_2
    aget-object v7, v0, v1

    aput-object v7, v4, v5

    .line 155
    .end local v5
    nop

    .line 143
    move v5, v6

    goto :goto_0

    .line 157
    .end local v6
    :cond_3
    iput v3, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    .line 158
    int-to-float v5, v2

    iget v6, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    .line 159
    iput-object v4, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 86
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    .line 87
    .local v1, "m":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, v1

    .line 88
    .local v2, "pos":I
    aget-object v3, v0, v2

    .line 89
    .local v3, "curr":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 90
    return v4

    .line 92
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result v4

    return v4

    .line 96
    :cond_1
    add-int/lit8 v5, v2, 0x1

    and-int v2, v5, v1

    .line 97
    aget-object v3, v0, v2

    .line 98
    if-nez v3, :cond_2

    .line 99
    return v4

    .line 101
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result v4

    return v4
.end method

.method removeEntry(I[Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "pos"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/reactivex/internal/util/OpenHashSet;, "Lio/reactivex/internal/util/OpenHashSet<TT;>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    .line 114
    :goto_0
    move v0, p1

    .line 115
    .local v0, "last":I
    add-int/lit8 v2, p1, 0x1

    and-int p1, v2, p3

    .line 117
    :goto_1
    aget-object v2, p2, p1

    .line 118
    .local v2, "curr":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 119
    const/4 v3, 0x0

    aput-object v3, p2, v0

    .line 120
    return v1

    .line 122
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v3

    and-int/2addr v3, p3

    .line 124
    .local v3, "slot":I
    if-gt v0, p1, :cond_1

    if-ge v0, v3, :cond_2

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_1
    if-lt v0, v3, :cond_3

    if-le v3, p1, :cond_3

    .line 125
    nop

    .line 130
    :cond_2
    :goto_2
    aput-object v2, p2, v0

    goto :goto_0

    .line 128
    :cond_3
    add-int/lit8 v4, p1, 0x1

    and-int p1, v4, p3

    goto :goto_1
.end method
