.class public final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/settings/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 138
    new-instance v0, Lcom/android/settings/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    .line 40
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method public static createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "mRemoteName":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 126
    const v1, 0x7f120ee2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_1
    return-object v0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static isBluetoothScanningEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ble_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 94
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x365

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    .line 96
    const v0, 0x7f120271

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 97
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "disconnectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;

    .line 67
    const v0, 0x104000a

    if-nez p1, :cond_0

    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 77
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    .local v0, "okText":Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 81
    .end local v0
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 84
    return-object p1
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .line 100
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 101
    return-void
.end method

.method private static showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I
    .param p3, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v2

    .line 107
    .local v2, "activity":Landroid/content/Context;
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1202a9

    .line 109
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 116
    :goto_0
    return-void
.end method
