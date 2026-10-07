.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryHistoryDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;->f$0:Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    return-void
.end method


# virtual methods
.method public final onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;->f$0:Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->lambda$updateEverything$0(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
