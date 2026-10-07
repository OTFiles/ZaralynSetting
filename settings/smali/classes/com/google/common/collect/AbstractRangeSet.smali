.class abstract Lcom/google/common/collect/AbstractRangeSet;
.super Ljava/lang/Object;
.source "AbstractRangeSet.java"

# interfaces
.implements Lcom/google/common/collect/RangeSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeSet<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    if-ne p1, p0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/RangeSet;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RangeSet;

    .line 88
    .local v0, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 90
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 95
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 100
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
