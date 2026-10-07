.class public Lcom/android/settings/fuelgauge/Estimate;
.super Ljava/lang/Object;
.source "Estimate.java"


# instance fields
.field public final averageDischargeTime:J

.field public final estimateMillis:J

.field public final isBasedOnUsage:Z


# direct methods
.method public constructor <init>(JZJ)V
    .locals 0
    .param p1, "estimateMillis"    # J
    .param p3, "isBasedOnUsage"    # Z
    .param p4, "averageDischargeTime"    # J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/Estimate;->estimateMillis:J

    .line 15
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/Estimate;->isBasedOnUsage:Z

    .line 16
    iput-wide p4, p0, Lcom/android/settings/fuelgauge/Estimate;->averageDischargeTime:J

    .line 17
    return-void
.end method
