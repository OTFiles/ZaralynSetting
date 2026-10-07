.class Lcom/android/settings/OthersSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OthersSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OthersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OthersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OthersSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/OthersSettings;

    .line 201
    iput-object p1, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    const-string v2, "accessory"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/OthersSettings;->access$002(Lcom/android/settings/OthersSettings;Z)Z

    .line 206
    const-string v1, "MoreOptionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbAccessoryMode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v4}, Lcom/android/settings/OthersSettings;->access$000(Lcom/android/settings/OthersSettings;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 208
    .local v1, "connected":Z
    if-nez v1, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v2}, Lcom/android/settings/OthersSettings;->access$100(Lcom/android/settings/OthersSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-virtual {v2}, Lcom/android/settings/OthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v4}, Lcom/android/settings/OthersSettings;->access$200(Lcom/android/settings/OthersSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 211
    iget-object v2, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v2, v3}, Lcom/android/settings/OthersSettings;->access$102(Lcom/android/settings/OthersSettings;Z)Z

    goto :goto_0

    .line 215
    :cond_0
    const-string v2, "ro.masstorage.enable"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v2}, Lcom/android/settings/OthersSettings;->access$100(Lcom/android/settings/OthersSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-virtual {v2}, Lcom/android/settings/OthersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    invoke-static {v3}, Lcom/android/settings/OthersSettings;->access$200(Lcom/android/settings/OthersSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 218
    iget-object v2, p0, Lcom/android/settings/OthersSettings$1;->this$0:Lcom/android/settings/OthersSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/OthersSettings;->access$102(Lcom/android/settings/OthersSettings;Z)Z

    .line 223
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method
