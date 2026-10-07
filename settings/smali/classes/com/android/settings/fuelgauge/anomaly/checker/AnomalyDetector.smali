.class public interface abstract Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;
.super Ljava/lang/Object;
.source "AnomalyDetector.java"


# virtual methods
.method public abstract detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation
.end method
