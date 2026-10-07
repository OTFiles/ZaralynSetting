.class public Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;
.super Ljava/lang/Object;
.source "PowerUsageBase.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private mRefreshType:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fuelgauge/PowerUsageBase;

    .line 104
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    .line 110
    const-string v0, "refresh_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->mRefreshType:I

    .line 111
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2
    .param p2, "statsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")V"
        }
    .end annotation

    .line 117
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/internal/os/BatteryStatsHelper;>;"
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iput-object p2, v0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 118
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->mRefreshType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshUi(I)V

    .line 119
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase$PowerLoaderCallback;->onLoadFinished(Landroid/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/internal/os/BatteryStatsHelper;>;"
    return-void
.end method
