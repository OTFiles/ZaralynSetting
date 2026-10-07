.class Lcom/android/settings/fuelgauge/BatteryUtils$1;
.super Ljava/lang/Object;
.source "BatteryUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 341
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils$1;->this$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I
    .locals 4
    .param p1, "a"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "b"    # Lcom/android/internal/os/BatterySipper;

    .line 344
    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 341
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    check-cast p2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils$1;->compare(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)I

    move-result p1

    return p1
.end method
