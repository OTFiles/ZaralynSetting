.class abstract Lcom/google/common/collect/Maps$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3732
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 3741
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3742
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 3745
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3746
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 3747
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 3748
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3749
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    .line 3750
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    nop

    .line 3749
    :cond_1
    return v1

    .line 3752
    .end local v0
    .end local v2
    .end local v3
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 3756
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method abstract map()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3760
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3761
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 3762
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3764
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3769
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3770
    :catch_0
    move-exception v0

    .line 3772
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v1

    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3778
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3779
    :catch_0
    move-exception v0

    .line 3781
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v1

    .line 3782
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3783
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3784
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 3785
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3787
    .end local v3
    .end local v4
    :cond_0
    goto :goto_0

    .line 3788
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public size()I
    .locals 1

    .line 3737
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySet;, "Lcom/google/common/collect/Maps$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$EntrySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
