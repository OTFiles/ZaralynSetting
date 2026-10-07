.class Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;
.super Ljava/lang/Object;
.source "SmartBatteryTip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;-><init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 1
    .param p1, "size"    # I

    .line 72
    new-array v0, p1, [Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;->newArray(I)[Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p1

    return-object p1
.end method
