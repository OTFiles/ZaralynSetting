.class public Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.source "LocalDeviceNameDialogFragment.java"


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static newInstance()Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
    .locals 1

    .line 37
    new-instance v0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    .line 82
    const v0, 0x7f12030b

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 77
    const/16 v0, 0x21a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 57
    .local v0, "localManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 58
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onPause()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onResume()V

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 96
    return-void
.end method
