.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 79
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "mode":I
    if-eq v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 89
    .end local v0
    :cond_0
    return-void
.end method
