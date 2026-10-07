.class public Lcom/android/settings/fuelgauge/BatteryInfoLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "BatteryInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field batteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 41
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->batteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 42
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->batteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v2, "BatteryInfoLoader"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->loadInBackground()Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0
    .param p1, "result"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 47
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->onDiscardResult(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
