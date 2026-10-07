.class public Lcom/android/settings/fuelgauge/BatteryWifiParser;
.super Lcom/android/settings/fuelgauge/BatteryFlagParser;
.source "BatteryWifiParser.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "accentColor"    # I

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    .line 24
    return-void
.end method


# virtual methods
.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2
    .param p1, "record"    # Landroid/os/BatteryStats$HistoryItem;

    .line 28
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    shr-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 38
    const/4 v0, 0x1

    return v0

    .line 36
    :pswitch_0    # 0x1 0x2 0x3 0xb 0xc 0x0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0    # 0x0
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0    # 0xb
        :pswitch_0    # 0xc
    .end packed-switch
.end method
