.class Lcom/android/settings/bluetooth/OthersConnectionSettings$4;
.super Ljava/lang/Object;
.source "OthersConnectionSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OthersConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OthersConnectionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/OthersConnectionSettings;

    .line 763
    iput-object p1, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    .line 768
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() called for other View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$200(Lcom/android/settings/bluetooth/OthersConnectionSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$200(Lcom/android/settings/bluetooth/OthersConnectionSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->dismiss()V

    .line 774
    iget-object v0, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$202(Lcom/android/settings/bluetooth/OthersConnectionSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 776
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 777
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 778
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "device_address"

    .line 779
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    new-instance v3, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;-><init>()V

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$202(Lcom/android/settings/bluetooth/OthersConnectionSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 781
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$200(Lcom/android/settings/bluetooth/OthersConnectionSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->setArguments(Landroid/os/Bundle;)V

    .line 782
    iget-object v2, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->access$200(Lcom/android/settings/bluetooth/OthersConnectionSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/OthersConnectionSettings$4;->this$0:Lcom/android/settings/bluetooth/OthersConnectionSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/OthersConnectionSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 783
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 782
    invoke-virtual {v2, v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 784
    return-void
.end method
