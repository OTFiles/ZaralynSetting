.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$2;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettingsDashboardFragmentPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 133
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$2;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    const-string v0, "DevSettingsDashboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothA2dpReceiver.onReceive intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "android.bluetooth.codec.extra.CODEC_STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothCodecStatus;

    .line 142
    .local v1, "codecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    const-string v2, "DevSettingsDashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received BluetoothCodecStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$2;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 144
    .local v3, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v4, v3, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v4, :cond_0

    .line 145
    move-object v4, v3

    check-cast v4, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    invoke-interface {v4}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothCodecUpdated()V

    .line 147
    .end local v3
    :cond_0
    goto :goto_0

    .line 149
    .end local v1
    :cond_1
    return-void
.end method
