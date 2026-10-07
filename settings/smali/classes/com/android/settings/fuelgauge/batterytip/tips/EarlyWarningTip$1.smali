.class Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;
.super Ljava/lang/Object;
.source "EarlyWarningTip.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 1
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;->newArray(I)[Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p1

    return-object p1
.end method
