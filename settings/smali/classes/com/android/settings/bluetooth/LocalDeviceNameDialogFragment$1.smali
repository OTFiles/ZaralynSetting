.class Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalDeviceNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    .line 40
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    .line 46
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->updateDeviceName()V

    .line 50
    :cond_1
    return-void
.end method
