.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;->f$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    return-void
.end method


# virtual methods
.method public final onBatteryChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageBase$FbH3lnw7c_hajFOBNpt07exnLiM;->f$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->lambda$onCreate$0(Lcom/android/settings/fuelgauge/PowerUsageBase;I)V

    return-void
.end method
