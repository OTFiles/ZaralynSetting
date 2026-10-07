.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$Entries;
    }
.end annotation


# direct methods
.method static equalsImpl(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 2048
    .local p0, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    if-ne p1, p0, :cond_0

    .line 2049
    const/4 v0, 0x1

    return v0

    .line 2051
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 2052
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 2053
    .local v0, "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2055
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
