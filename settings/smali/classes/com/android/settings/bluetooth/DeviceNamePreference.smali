.class public Lcom/android/settings/bluetooth/DeviceNamePreference;
.super Lcom/android/settings/ArrowTitlePreference;
.source "DeviceNamePreference.java"


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/ArrowTitlePreference;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/DeviceNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceNamePreference$1;-><init>(Lcom/android/settings/bluetooth/DeviceNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ArrowTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/DeviceNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceNamePreference$1;-><init>(Lcom/android/settings/bluetooth/DeviceNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ArrowTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Lcom/android/settings/bluetooth/DeviceNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceNamePreference$1;-><init>(Lcom/android/settings/bluetooth/DeviceNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/ArrowTitlePreference;->init(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f0d0126

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->setLayoutResource(I)V

    .line 41
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 42
    .local v0, "localManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 43
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/ArrowTitlePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->updateTitle(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->updateSummary(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public register()V
    .locals 3

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method

.method public updateSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceNamePreference;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settings/ArrowTitlePreference;->updateSummary(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
