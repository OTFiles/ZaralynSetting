.class public Lcom/android/settingslib/core/instrumentation/EventLogWriter;
.super Ljava/lang/Object;
.source "EventLogWriter.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/LogWriter;


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method


# virtual methods
.method public varargs action(II[Landroid/util/Pair;)V
    .locals 6
    .param p1, "category"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p3, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    .line 50
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 52
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 53
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 52
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .end local v0
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 57
    :goto_2
    return-void
.end method

.method public varargs action(IZ[Landroid/util/Pair;)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p3, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(II[Landroid/util/Pair;)V

    .line 61
    return-void
.end method

.method public action(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 80
    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p4, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz p4, :cond_2

    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    .line 94
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 96
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    .line 97
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 96
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .end local v0
    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    :goto_2
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 86
    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p3, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 65
    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .line 68
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 69
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 70
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    if-eqz p2, :cond_0

    .line 71
    const/16 v1, 0x341

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 74
    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 104
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I

    .line 42
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .line 35
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x341

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 38
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 39
    return-void
.end method
