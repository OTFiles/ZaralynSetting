.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Landroid/app/Activity;
.source "BluetoothPairingDialog.java"


# instance fields
.field private mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 43
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-object v0
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 69
    const/4 v1, 0x1

    .line 71
    .local v1, "fragmentFound":Z
    nop

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "bluetooth.pairing.fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 74
    .local v2, "bluetoothFragment":Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->dismiss()V

    .line 77
    const/4 v2, 0x0

    .line 80
    :cond_1
    if-nez v2, :cond_2

    .line 81
    const/4 v1, 0x0

    .line 82
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;-><init>()V

    move-object v2, v3

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V

    .line 85
    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    .line 87
    if-nez v1, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "bluetooth.pairing.fragment"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    :cond_0
    return-void
.end method
