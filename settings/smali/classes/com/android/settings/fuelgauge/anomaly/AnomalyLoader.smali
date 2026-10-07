.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "AnomalyLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mPackageName:Ljava/lang/String;

.field mPolicy:Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "policy"    # Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 79
    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPackageName:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 81
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mUserManager:Landroid/os/UserManager;

    .line 82
    iput-object p4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPolicy:Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;)V

    .line 72
    return-void
.end method


# virtual methods
.method generateFakeData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "anomalies":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 108
    .local v1, "context":Landroid/content/Context;
    const-string v2, "com.android.settings"

    .line 109
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "Settings"

    .line 111
    .local v3, "displayName":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 113
    .local v4, "uid":I
    new-instance v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 114
    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 115
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const-string v6, "com.android.settings"

    .line 116
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 117
    invoke-virtual {v5, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    .line 113
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 120
    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 121
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const-string v6, "com.android.settings"

    .line 122
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    .line 119
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    .line 126
    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 127
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const-string v6, "com.android.settings"

    .line 128
    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 129
    invoke-virtual {v5, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    .line 125
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AnomalyLoader"

    const-string v6, "Cannot find package by name: com.android.settings"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v4
    :goto_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mUserManager:Landroid/os/UserManager;

    .line 98
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPolicy:Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/anomaly/Anomaly;>;"
    return-void
.end method
