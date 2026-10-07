.class Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->lambda$new$0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    .line 495
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 498
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Lcom/android/settings/dashboard/SummaryLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method
