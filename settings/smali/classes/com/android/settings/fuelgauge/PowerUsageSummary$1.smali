.class Lcom/android/settings/fuelgauge/PowerUsageSummary$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .line 129
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfoLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 1
    .param p2, "batteryInfo"    # Lcom/android/settings/fuelgauge/BatteryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ")V"
        }
    .end annotation

    .line 138
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings/fuelgauge/BatteryInfo;>;"
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iput-object p2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 140
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference()V

    .line 141
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p2, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/settings/fuelgauge/BatteryInfo;>;"
    return-void
.end method
