.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 143
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 156
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v0

    .line 157
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$102(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setVisible(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 174
    return-void
.end method
