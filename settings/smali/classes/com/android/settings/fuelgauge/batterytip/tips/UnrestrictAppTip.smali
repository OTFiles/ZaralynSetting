.class public Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "UnrestrictAppTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 34
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 42
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnrestrictAppInfo()Lcom/android/settings/fuelgauge/batterytip/AppInfo;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    return-object v0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsFeatureProvider"    # Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 73
    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1
    .param p1, "tip"    # Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 67
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mState:I

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->mAppInfo:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
