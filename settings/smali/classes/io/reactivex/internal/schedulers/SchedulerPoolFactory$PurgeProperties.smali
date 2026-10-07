.class final Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PurgeProperties"
.end annotation


# instance fields
.field purgeEnable:Z

.field purgePeriod:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method load(Ljava/util/Properties;)V
    .locals 2
    .param p1, "properties"    # Ljava/util/Properties;

    .line 111
    const-string v0, "rx2.purge-enabled"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "rx2.purge-enabled"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgeEnable:Z

    goto :goto_0

    .line 114
    :cond_0
    iput-boolean v1, p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgeEnable:Z

    .line 117
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgeEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "rx2.purge-period-seconds"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :try_start_0
    const-string v0, "rx2.purge-period-seconds"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgePeriod:I

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iput v1, p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgePeriod:I

    .line 122
    .end local v0
    :goto_1
    goto :goto_2

    .line 124
    :cond_1
    iput v1, p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$PurgeProperties;->purgePeriod:I

    .line 126
    :goto_2
    return-void
.end method
