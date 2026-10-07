.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 313
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 317
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 328
    return-void
.end method
