.class public Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# static fields
.field private static final PACKAGES_SYSTEM:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    const-string v0, "com.android.providers.media"

    const-string v1, "com.android.providers.calendar"

    const-string v2, "com.android.systemui"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getAdvancedUsageScreenInfoString()Ljava/lang/String;
    .locals 1

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zeroTime"    # J

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "timeRemaining"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "timeRemaining"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isEstimateDebugEnabled()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isSmartBatterySupported()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 1
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .locals 8
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .line 51
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    .line 52
    .local v0, "uid":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 54
    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 55
    return v1

    .line 56
    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 57
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 58
    .local v6, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    return v1

    .line 57
    .end local v6
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 64
    :cond_3
    return v3
.end method
