.class public Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.source "RemoteDeviceNameDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
    .locals 3
    .param p0, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 37
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "cached_device"

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cached_device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 48
    .local v1, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 49
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    return-object v3
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .line 65
    const v0, 0x7f120284

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/16 v0, 0x3f7

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 56
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
