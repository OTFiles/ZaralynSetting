.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSet$Builder;,
        Lcom/google/common/collect/ImmutableSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 383
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static synthetic access$000(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 74
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 437
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .locals 5
    .param p0, "setSize"    # I

    .line 249
    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_1

    .line 251
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 252
    .local v0, "tableSize":I
    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 253
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return v0

    .line 259
    .end local v0
    :cond_1
    const/high16 v1, 0x40000000

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 260
    return v1
.end method

.method private static varargs construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 13
    .param p0, "n"    # I
    .param p1, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 189
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 190
    .local v1, "tableSize":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 191
    .local v2, "table":[Ljava/lang/Object;
    add-int/lit8 v3, v1, -0x1

    .line 192
    .local v3, "mask":I
    const/4 v4, 0x0

    .line 193
    .local v4, "hashCode":I
    const/4 v5, 0x0

    .line 194
    .local v5, "uniques":I
    move v6, v4

    move v4, v0

    goto :goto_0

    .line 184
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :pswitch_0    # 0x1
    aget-object v0, p1, v0

    .line 185
    .local v0, "elem":Ljava/lang/Object;, "TE;"
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 181
    .end local v0
    :pswitch_1    # 0x0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 194
    .restart local v1
    .restart local v2
    .restart local v3
    .local v4, "i":I
    .restart local v5
    .local v6, "hashCode":I
    :goto_0
    if-ge v4, p0, :cond_2

    .line 195
    aget-object v7, p1, v4

    invoke-static {v7, v4}, Lcom/google/common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 196
    .local v7, "element":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 197
    .local v8, "hash":I
    invoke-static {v8}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v9

    .line 198
    .local v9, "j":I
    :goto_1
    and-int v10, v9, v3

    .line 199
    .local v10, "index":I
    aget-object v11, v2, v10

    .line 200
    .local v11, "value":Ljava/lang/Object;
    if-nez v11, :cond_0

    .line 202
    add-int/lit8 v12, v5, 0x1

    .local v12, "uniques":I
    aput-object v7, p1, v5

    .line 203
    .end local v5
    aput-object v7, v2, v10

    .line 204
    add-int/2addr v6, v8

    .line 205
    nop

    .line 194
    move v5, v12

    goto :goto_2

    .line 206
    .end local v12
    .restart local v5
    :cond_0
    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 207
    nop

    .line 194
    .end local v7
    .end local v8
    .end local v9
    .end local v10
    .end local v11
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    .restart local v7
    .restart local v8
    .restart local v9
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 211
    .end local v4
    .end local v7
    .end local v8
    .end local v9
    :cond_2
    const/4 v4, 0x0

    invoke-static {p1, v5, p0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 212
    const/4 v4, 0x1

    if-ne v5, v4, :cond_3

    .line 215
    aget-object v0, p1, v0

    .line 216
    .local v0, "element":Ljava/lang/Object;, "TE;"
    new-instance v4, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v4, v0, v6}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    return-object v4

    .line 217
    .end local v0
    :cond_3
    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 220
    invoke-static {v5, p1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 222
    :cond_4
    array-length v0, p1

    if-ge v5, v0, :cond_5

    .line 223
    invoke-static {p1, v5}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 224
    :cond_5
    move-object v0, p1

    .line 225
    .local v0, "uniqueElements":[Ljava/lang/Object;
    :goto_3
    new-instance v4, Lcom/google/common/collect/RegularImmutableSet;

    invoke-direct {v4, v0, v6, v2, v3}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 272
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 278
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 276
    :pswitch_0    # 0x1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 274
    :pswitch_1    # 0x0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 391
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 392
    const/4 v0, 0x1

    return v0

    .line 393
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 395
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 397
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 403
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 387
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 72
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 429
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
