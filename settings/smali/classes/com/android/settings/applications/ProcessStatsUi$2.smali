.class Lcom/android/settings/applications/ProcessStatsUi$2;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsPackageEntry;Lcom/android/settings/applications/ProcStatsPackageEntry;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/settings/applications/ProcStatsPackageEntry;
    .param p2, "rhs"    # Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 205
    iget-wide v0, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v0, v0

    .line 206
    .local v0, "rhsMax":D
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    .line 207
    .local v2, "lhsMax":D
    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    .line 208
    const/4 v4, 0x0

    return v4

    .line 210
    :cond_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 202
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsUi$2;->compare(Lcom/android/settings/applications/ProcStatsPackageEntry;Lcom/android/settings/applications/ProcStatsPackageEntry;)I

    move-result p1

    return p1
.end method
