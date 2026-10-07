.class Lcom/android/settings/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I
    .locals 7
    .param p1, "lhs"    # Lcom/android/settings/applications/ProcStatsEntry;
    .param p2, "rhs"    # Lcom/android/settings/applications/ProcStatsEntry;

    .line 457
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 458
    return v1

    .line 459
    :cond_0
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v4, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpl-double v0, v2, v4

    const/4 v2, -0x1

    if-lez v0, :cond_1

    .line 460
    return v2

    .line 461
    :cond_1
    iget-wide v3, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v5, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 462
    return v1

    .line 463
    :cond_2
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v3, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 464
    return v2

    .line 466
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 454
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcStatsData$1;->compare(Lcom/android/settings/applications/ProcStatsEntry;Lcom/android/settings/applications/ProcStatsEntry;)I

    move-result p1

    return p1
.end method
