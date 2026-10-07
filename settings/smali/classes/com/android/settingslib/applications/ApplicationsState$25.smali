.class Lcom/android/settingslib/applications/ApplicationsState$25;
.super Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2095
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 2102
    monitor-enter p1

    .line 2103
    :try_start_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 2104
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 2105
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 2106
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 2107
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2108
    .local v0, "isCategorized":Z
    :goto_1
    monitor-exit p1

    .line 2109
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 2108
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 0

    .line 2097
    return-void
.end method
