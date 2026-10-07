.class public Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ForgetDeviceDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    .locals 2
    .param p0, "deviceAddress"    # Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "device_address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;-><init>()V

    .line 46
    .local v1, "dialog":Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 54
    .local v1, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 55
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    return-object v3
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/16 v0, 0x407

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "inState"    # Landroid/os/Bundle;

    .line 65
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$EDf2UTKPcHIZGnJUVoyf7QwuxfU;

    .local v0, "onConfirm":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$ForgetDeviceDialogFragment$EDf2UTKPcHIZGnJUVoyf7QwuxfU;-><init>(Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 74
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    const v3, 0x7f120336

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 77
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 79
    .local v2, "dialog":Landroid/app/AlertDialog;
    const v3, 0x7f120337

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 81
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 80
    const v4, 0x7f120335

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    return-object v2
.end method
