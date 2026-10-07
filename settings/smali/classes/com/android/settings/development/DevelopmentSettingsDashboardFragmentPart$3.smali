.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragmentPart.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 154
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 158
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 160
    monitor-exit v0

    .line 161
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Ljava/util/List;

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

    .line 162
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v2, :cond_0

    .line 163
    move-object v2, v1

    check-cast v2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    .line 164
    invoke-static {v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 166
    .end local v1
    :cond_0
    goto :goto_0

    .line 167
    :cond_1
    return-void

    .line 160
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

    .line 171
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 173
    monitor-exit v0

    .line 174
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragmentPart;)Ljava/util/List;

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

    .line 175
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v2, :cond_0

    .line 176
    move-object v2, v1

    check-cast v2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    .line 177
    invoke-interface {v2}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceDisconnected()V

    .line 179
    .end local v1
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    return-void

    .line 173
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
