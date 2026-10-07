.class Lcom/android/settings/fuelgauge/PowerUsageSummary$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, "niks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/settings/display/BatteryPercentagePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/display/BatteryPercentagePreferenceController;-><init>(Landroid/content/Context;)V

    .line 544
    .local v1, "controller":Lcom/android/settings/display/BatteryPercentagePreferenceController;
    invoke-virtual {v1}, Lcom/android/settings/display/BatteryPercentagePreferenceController;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    invoke-virtual {v1}, Lcom/android/settings/display/BatteryPercentagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_0
    const-string v2, "battery_saver_summary"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 534
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f150089

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 535
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
