.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 106
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 110
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 112
    monitor-exit v0

    .line 113
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 114
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v2, :cond_0

    .line 115
    move-object v2, v1

    check-cast v2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 116
    invoke-static {v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 118
    .end local v1
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    return-void

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 125
    monitor-exit v0

    .line 126
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 127
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v2, :cond_0

    .line 128
    move-object v2, v1

    check-cast v2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    .line 129
    invoke-interface {v2}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceDisconnected()V

    .line 131
    .end local v1
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    return-void

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
