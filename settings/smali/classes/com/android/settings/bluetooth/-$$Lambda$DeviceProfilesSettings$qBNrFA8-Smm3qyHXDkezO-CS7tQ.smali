.class public final synthetic Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private final synthetic f$1:Landroid/bluetooth/BluetoothDevice;

.field private final synthetic f$2:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;->f$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;->f$2:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;->f$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;->f$2:Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->lambda$addPreferencesForProfiles$0(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method
