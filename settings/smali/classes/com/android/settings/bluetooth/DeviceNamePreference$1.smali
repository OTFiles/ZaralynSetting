.class Lcom/android/settings/bluetooth/DeviceNamePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceNamePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceNamePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceNamePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceNamePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/DeviceNamePreference;

    .line 71
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceNamePreference$1;->this$0:Lcom/android/settings/bluetooth/DeviceNamePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceNamePreference$1;->this$0:Lcom/android/settings/bluetooth/DeviceNamePreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DeviceNamePreference;->updateSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    .line 78
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceNamePreference$1;->this$0:Lcom/android/settings/bluetooth/DeviceNamePreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DeviceNamePreference;->updateSummary(Ljava/lang/String;)V

    .line 82
    :cond_1
    :goto_0
    return-void
.end method
