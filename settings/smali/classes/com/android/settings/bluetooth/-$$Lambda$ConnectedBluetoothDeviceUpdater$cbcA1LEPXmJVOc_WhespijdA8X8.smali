.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;->f$0:Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;->f$0:Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->lambda$addPreference$0(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
