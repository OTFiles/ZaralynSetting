.class Lcom/android/settings/applications/ProcessStatsDetail$3;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/ProcStatsEntry$Service;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsEntry$Service;Lcom/android/settings/applications/ProcStatsEntry$Service;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/settings/applications/ProcStatsEntry$Service;
    .param p2, "rhs"    # Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 315
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 316
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 318
    const/4 v0, -0x1

    return v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 312
    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry$Service;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$3;->compare(Lcom/android/settings/applications/ProcStatsEntry$Service;Lcom/android/settings/applications/ProcStatsEntry$Service;)I

    move-result p1

    return p1
.end method
