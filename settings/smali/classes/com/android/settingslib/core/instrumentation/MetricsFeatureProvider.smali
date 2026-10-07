.class public Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.super Ljava/lang/Object;
.source "MetricsFeatureProvider.java"


# instance fields
.field private mLoggerWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/instrumentation/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->installLogWriters()V

    .line 38
    return-void
.end method

.method private sinceVisibleTaggedData(J)Landroid/util/Pair;
    .locals 2
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 157
    const/16 v0, 0x31a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 94
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;II)V

    .line 95
    .end local v1
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .locals 2
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

    .line 108
    .local p4, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 109
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 110
    .end local v1
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I
    .param p3, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 102
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;IZ)V

    .line 103
    .end local v1
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 2
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

    .line 85
    .local p3, "taggedData":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 86
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 87
    .end local v1
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V
    .locals 6
    .param p1, "visibilityLogger"    # Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;
    .param p2, "category"    # I
    .param p3, "value"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 79
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;->elapsedTimeSinceVisible()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->sinceVisibleTaggedData(J)Landroid/util/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    .line 79
    invoke-interface {v1, p2, p3, v2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(IZ[Landroid/util/Pair;)V

    .line 81
    .end local v1
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 58
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->actionWithSource(Landroid/content/Context;II)V

    .line 59
    .end local v1
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 115
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    .end local v1
    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public getMetricsCategory(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 126
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    return v0

    .line 127
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # I

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 52
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->hidden(Landroid/content/Context;I)V

    .line 53
    .end local v1
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method protected installLogWriters()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v1, Lcom/android/settingslib/core/instrumentation/EventLogWriter;

    invoke-direct {v1}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "sourceMetricsCategory"    # I

    .line 134
    if-nez p2, :cond_0

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 138
    .local v0, "cn":Landroid/content/ComponentName;
    const/16 v1, 0x341

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x33e

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "action":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    return-void

    .line 144
    :cond_1
    new-array v3, v3, [Landroid/util/Pair;

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    aput-object v1, v3, v2

    .line 144
    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 146
    return-void

    .line 147
    .end local v5
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    return-void

    .line 152
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Landroid/util/Pair;

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    aput-object v1, v3, v2

    .line 152
    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 154
    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # I
    .param p3, "category"    # I

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    .line 46
    .local v1, "writer":Lcom/android/settingslib/core/instrumentation/LogWriter;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->visible(Landroid/content/Context;II)V

    .line 47
    .end local v1
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
